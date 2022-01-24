#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ti_ohci {int dummy; } ;
struct dma_iso_ctx {int num_desc; size_t* last_used_cmd; int* next_buffer; size_t* buffer_prg_assignment; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; int /*<<< orphan*/ * buffer_status; TYPE_2__** it_prg; struct ti_ohci* ohci; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO1394_BUFFER_READY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_ohci*,struct dma_iso_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(unsigned long l)
{
	struct dma_iso_ctx *d = (struct dma_iso_ctx *) l;
	struct ti_ohci *ohci = d->ohci;
	int i;

	FUNC2(&d->lock);

	for (i = 0; i < d->num_desc; i++) {
		if (d->it_prg[i][d->last_used_cmd[i]].end.status &
		    FUNC0(0xFFFF0000)) {
			int next = d->next_buffer[i];
			FUNC1(ohci, d, next);
			d->it_prg[i][d->last_used_cmd[i]].end.status = 0;
			d->buffer_status[d->buffer_prg_assignment[i]] = VIDEO1394_BUFFER_READY;
		}
	}

	FUNC3(&d->lock);

	if (FUNC4(&d->waitq))
		FUNC5(&d->waitq);
}