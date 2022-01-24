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
struct sparc64_msiq_ops {int (* msiq_build_irq ) (struct pci_pbm_info*,unsigned long,unsigned long) ;} ;
struct pci_pbm_info {int numa_node; unsigned long msiq_first; int /*<<< orphan*/ * msiq_irq_cookies; } ;
typedef  int /*<<< orphan*/  cpumask_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sparc64_msiq_interrupt ; 
 int FUNC3 (struct pci_pbm_info*,unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct pci_pbm_info *pbm,
				 const struct sparc64_msiq_ops *ops,
				 unsigned long msiqid,
				 unsigned long devino)
{
	int irq = ops->msiq_build_irq(pbm, msiqid, devino);
	int err, nid;

	if (irq < 0)
		return irq;

	nid = pbm->numa_node;
	if (nid != -1) {
		cpumask_t numa_mask = *FUNC0(nid);

		FUNC1(irq, &numa_mask);
	}
	err = FUNC2(irq, sparc64_msiq_interrupt, 0,
			  "MSIQ",
			  &pbm->msiq_irq_cookies[msiqid - pbm->msiq_first]);
	if (err)
		return err;

	return 0;
}