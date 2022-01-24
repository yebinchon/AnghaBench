#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * next; } ;
struct TYPE_9__ {TYPE_2__ link; } ;
struct dma_iso_ctx {int num_desc; int /*<<< orphan*/  link; struct dma_iso_ctx* next_buffer; struct dma_iso_ctx* last_used_cmd; struct dma_iso_ctx* buffer_time; struct dma_iso_ctx* buffer_prg_assignment; struct dma_iso_ctx* buffer_status; struct dma_iso_ctx* it_prg; struct dma_iso_ctx* ir_prg; struct dma_iso_ctx* prg_reg; int /*<<< orphan*/  dma; TYPE_4__ iso_tasklet; TYPE_3__* ohci; int /*<<< orphan*/  ctrlClear; int /*<<< orphan*/  ctx; } ;
struct TYPE_8__ {TYPE_1__* host; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_iso_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_iso_ctx*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,TYPE_4__*) ; 

__attribute__((used)) static int FUNC7(struct dma_iso_ctx *d)
{
	int i;

	FUNC0(d->ohci->host->id, "Freeing dma_iso_ctx %d", d->ctx);

	FUNC5(d->ohci, d->ctrlClear, NULL);
	if (d->iso_tasklet.link.next != NULL)
		FUNC6(d->ohci, &d->iso_tasklet);

	FUNC2(&d->dma);

	if (d->prg_reg) {
		for (i = 0; i < d->num_desc; i++)
			FUNC1(&d->prg_reg[i]);
		FUNC3(d->prg_reg);
	}

	FUNC3(d->ir_prg);
	FUNC3(d->it_prg);
	FUNC3(d->buffer_status);
	FUNC3(d->buffer_prg_assignment);
	FUNC3(d->buffer_time);
	FUNC3(d->last_used_cmd);
	FUNC3(d->next_buffer);
	FUNC4(&d->link);
	FUNC3(d);

	return 0;
}