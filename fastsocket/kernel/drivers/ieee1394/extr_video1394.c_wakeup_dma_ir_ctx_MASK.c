#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dma_iso_ctx {int num_desc; int nb_cmd; size_t* buffer_prg_assignment; int buf_size; int /*<<< orphan*/  waitq; int /*<<< orphan*/  lock; int /*<<< orphan*/  dma; int /*<<< orphan*/ * buffer_time; int /*<<< orphan*/ * buffer_status; TYPE_1__** ir_prg; } ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEO1394_BUFFER_READY ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_iso_ctx*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long l)
{
	struct dma_iso_ctx *d = (struct dma_iso_ctx *) l;
	int i;

	FUNC4(&d->lock);

	for (i = 0; i < d->num_desc; i++) {
		if (d->ir_prg[i][d->nb_cmd-1].status & FUNC0(0xFFFF0000)) {
			FUNC3(d, i);
			d->buffer_status[d->buffer_prg_assignment[i]] = VIDEO1394_BUFFER_READY;
			FUNC2(&d->buffer_time[d->buffer_prg_assignment[i]]);
			FUNC1(&d->dma,
				d->buffer_prg_assignment[i] * d->buf_size,
				d->buf_size);
		}
	}

	FUNC5(&d->lock);

	if (FUNC6(&d->waitq))
		FUNC7(&d->waitq);
}