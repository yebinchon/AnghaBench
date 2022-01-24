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
typedef  int /*<<< orphan*/  u64 ;
struct pci_pbm_info {unsigned long devhandle; } ;
struct iommu_batch {unsigned long prot; unsigned long entry; unsigned long npages; int /*<<< orphan*/ * pglist; TYPE_2__* dev; } ;
struct TYPE_3__ {struct pci_pbm_info* host_controller; } ;
struct TYPE_4__ {TYPE_1__ archdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (unsigned long,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,int /*<<< orphan*/ ,unsigned long,unsigned long,int /*<<< orphan*/ ,long) ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static long FUNC6(struct iommu_batch *p)
{
	struct pci_pbm_info *pbm = p->dev->archdata.host_controller;
	unsigned long devhandle = pbm->devhandle;
	unsigned long prot = p->prot;
	unsigned long entry = p->entry;
	u64 *pglist = p->pglist;
	unsigned long npages = p->npages;

	while (npages != 0) {
		long num;

		num = FUNC2(devhandle, FUNC0(0, entry),
					  npages, prot, FUNC1(pglist));
		if (FUNC5(num < 0)) {
			if (FUNC4())
				FUNC3("iommu_batch_flush: IOMMU map of "
				       "[%08lx:%08llx:%lx:%lx:%lx] failed with "
				       "status %ld\n",
				       devhandle, FUNC0(0, entry),
				       npages, prot, FUNC1(pglist), num);
			return -1;
		}

		entry += num;
		npages -= num;
		pglist += num;
	}

	p->entry = entry;
	p->npages = 0;

	return 0;
}