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
struct sn_irq_info {int irq_slice; int irq_cpuid; size_t irq_irq; int /*<<< orphan*/  list; int /*<<< orphan*/  irq_pciioinfo; int /*<<< orphan*/  irq_nasid; } ;
struct pci_dev {int dummy; } ;
struct irq_desc {int /*<<< orphan*/  status; } ;
typedef  int /*<<< orphan*/  nasid_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_AFFINITY_SET ; 
 int /*<<< orphan*/  FUNC0 (struct pci_dev*) ; 
 int FUNC1 (int) ; 
 struct irq_desc* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sn_irq_info_lock ; 
 int /*<<< orphan*/ * sn_irq_lh ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct pci_dev *pci_dev, struct sn_irq_info *sn_irq_info)
{
	nasid_t nasid = sn_irq_info->irq_nasid;
	int slice = sn_irq_info->irq_slice;
	int cpu = FUNC4(nasid, slice);
#ifdef CONFIG_SMP
	int cpuphys;
	struct irq_desc *desc;
#endif

	FUNC5(pci_dev);
	sn_irq_info->irq_cpuid = cpu;
	sn_irq_info->irq_pciioinfo = FUNC0(pci_dev);

	/* link it into the sn_irq[irq] list */
	FUNC9(&sn_irq_info_lock);
	FUNC3(&sn_irq_info->list, sn_irq_lh[sn_irq_info->irq_irq]);
	FUNC7(sn_irq_info->irq_irq);
	FUNC10(&sn_irq_info_lock);

	FUNC6(sn_irq_info);
#ifdef CONFIG_SMP
	cpuphys = cpu_physical_id(cpu);
	set_irq_affinity_info(sn_irq_info->irq_irq, cpuphys, 0);
	desc = irq_to_desc(sn_irq_info->irq_irq);
	/*
	 * Affinity was set by the PROM, prevent it from
	 * being reset by the request_irq() path.
	 */
	desc->status |= IRQ_AFFINITY_SET;
#endif
}