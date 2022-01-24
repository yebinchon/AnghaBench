#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ti_ohci {int dummy; } ;
struct dma_trm_ctx {int num_desc; struct ti_ohci* ohci; scalar_t__* prg_bus; scalar_t__* prg_cpu; int /*<<< orphan*/  prg_pool; int /*<<< orphan*/  ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct dma_trm_ctx *d)
{
	int i;
	struct ti_ohci *ohci = d->ohci;

	if (ohci == NULL)
		return;

	FUNC0("Freeing dma_trm_ctx %d", d->ctx);

	if (d->prg_cpu) {
		for (i=0; i<d->num_desc; i++)
			if (d->prg_cpu[i] && d->prg_bus[i])
				FUNC3(d->prg_pool, d->prg_cpu[i],
					      d->prg_bus[i]);
		FUNC2(d->prg_pool);
		FUNC1(d->prg_cpu);
		FUNC1(d->prg_bus);
	}

	/* Mark this context as freed. */
	d->ohci = NULL;
}