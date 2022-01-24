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
typedef  scalar_t__ u32 ;
struct resource {char* name; int /*<<< orphan*/  flags; scalar_t__ start; scalar_t__ end; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct pci_pbm_info {TYPE_2__ mem_space; TYPE_1__* op; } ;
struct TYPE_3__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_BUSY ; 
 struct resource* FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct resource*) ; 

__attribute__((used)) static void FUNC5(struct pci_pbm_info *pbm)
{
	const u32 *vdma = FUNC1(pbm->op->node, "virtual-dma", NULL);

	if (vdma) {
		struct resource *rp = FUNC0(sizeof(*rp), GFP_KERNEL);

		if (!rp) {
			FUNC3("Cannot allocate IOMMU resource.\n");
			FUNC2();
		}
		rp->name = "IOMMU";
		rp->start = pbm->mem_space.start + (unsigned long) vdma[0];
		rp->end = rp->start + (unsigned long) vdma[1] - 1UL;
		rp->flags = IORESOURCE_BUSY;
		FUNC4(&pbm->mem_space, rp);
	}
}