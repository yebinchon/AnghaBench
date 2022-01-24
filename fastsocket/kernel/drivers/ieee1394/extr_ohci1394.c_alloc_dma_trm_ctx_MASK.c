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
struct ti_ohci {int /*<<< orphan*/  dev; } ;
struct dma_trm_ctx {int type; int ctx; int num_desc; int /*<<< orphan*/  task; scalar_t__ cmdPtr; scalar_t__ ctrlClear; scalar_t__ ctrlSet; int /*<<< orphan*/  lock; int /*<<< orphan*/ ** prg_cpu; int /*<<< orphan*/ * prg_bus; int /*<<< orphan*/ * prg_pool; struct ti_ohci* ohci; } ;
struct at_dma_prg {int dummy; } ;
typedef  enum context_type { ____Placeholder_context_type } context_type ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 scalar_t__ OHCI1394_ContextCommandPtr ; 
 scalar_t__ OHCI1394_ContextControlClear ; 
 scalar_t__ OHCI1394_ContextControlSet ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  dma_trm_tasklet ; 
 int /*<<< orphan*/  FUNC1 (struct dma_trm_ctx*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int
FUNC9(struct ti_ohci *ohci, struct dma_trm_ctx *d,
		  enum context_type type, int ctx, int num_desc,
		  int context_base)
{
	int i, len;
	static char pool_name[20];
	static int num_allocs=0;

	d->ohci = ohci;
	d->type = type;
	d->ctx = ctx;
	d->num_desc = num_desc;
	d->ctrlSet = 0;
	d->ctrlClear = 0;
	d->cmdPtr = 0;

	d->prg_cpu = FUNC2(d->num_desc * sizeof(*d->prg_cpu), GFP_KERNEL);
	d->prg_bus = FUNC2(d->num_desc * sizeof(*d->prg_bus), GFP_KERNEL);

	if (d->prg_cpu == NULL || d->prg_bus == NULL) {
		FUNC0(KERN_ERR, "Failed to allocate %s", "AT DMA prg");
		FUNC1(d);
		return -ENOMEM;
	}

	len = FUNC7(pool_name, "ohci1394_trm_prg");
	FUNC7(pool_name+len, "%d", num_allocs);
	d->prg_pool = FUNC5(pool_name, ohci->dev,
				sizeof(struct at_dma_prg), 4, 0);
	if (d->prg_pool == NULL) {
		FUNC0(KERN_ERR, "pci_pool_create failed for %s", pool_name);
		FUNC1(d);
		return -ENOMEM;
	}
	num_allocs++;

	for (i = 0; i < d->num_desc; i++) {
		d->prg_cpu[i] = FUNC4(d->prg_pool, GFP_KERNEL, d->prg_bus+i);

                if (d->prg_cpu[i] != NULL) {
                        FUNC3(d->prg_cpu[i], 0, sizeof(struct at_dma_prg));
		} else {
			FUNC0(KERN_ERR,
			      "Failed to allocate %s", "AT DMA prg");
			FUNC1(d);
			return -ENOMEM;
		}
	}

        FUNC6(&d->lock);

	/* initialize tasklet */
	d->ctrlSet = context_base + OHCI1394_ContextControlSet;
	d->ctrlClear = context_base + OHCI1394_ContextControlClear;
	d->cmdPtr = context_base + OHCI1394_ContextCommandPtr;
	FUNC8(&d->task, dma_trm_tasklet, (unsigned long)d);
	return 0;
}