#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int table_size; int num_gpu_pages; scalar_t__ ptr; } ;
struct radeon_device {TYPE_3__* asic; TYPE_1__ gart; } ;
struct TYPE_5__ {int /*<<< orphan*/ * set_page; int /*<<< orphan*/ * tlb_flush; } ;
struct TYPE_6__ {TYPE_2__ gart; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  r100_pci_gart_set_page ; 
 int /*<<< orphan*/  r100_pci_gart_tlb_flush ; 
 int FUNC1 (struct radeon_device*) ; 
 int FUNC2 (struct radeon_device*) ; 

int FUNC3(struct radeon_device *rdev)
{
	int r;

	if (rdev->gart.ptr) {
		FUNC0(1, "R100 PCI GART already initialized\n");
		return 0;
	}
	/* Initialize common gart structure */
	r = FUNC1(rdev);
	if (r)
		return r;
	rdev->gart.table_size = rdev->gart.num_gpu_pages * 4;
	rdev->asic->gart.tlb_flush = &r100_pci_gart_tlb_flush;
	rdev->asic->gart.set_page = &r100_pci_gart_set_page;
	return FUNC2(rdev);
}