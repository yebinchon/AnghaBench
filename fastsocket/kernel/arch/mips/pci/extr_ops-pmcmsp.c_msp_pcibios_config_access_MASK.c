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
typedef  unsigned long u32 ;
struct pci_bus {unsigned char number; } ;
struct msp_pci_regs {unsigned long if_status; unsigned char config_addr; } ;

/* Variables and functions */
 unsigned char BPCI_CFGADDR_BUSNUM_SHF ; 
 unsigned char BPCI_CFGADDR_ENABLE ; 
 unsigned char BPCI_CFGADDR_FUNCTNUM_SHF ; 
 unsigned long BPCI_IFSTATUS_BC0F ; 
 unsigned long BPCI_IFSTATUS_BC1F ; 
 int IRQF_DISABLED ; 
 int IRQF_SHARED ; 
 int /*<<< orphan*/  MSP_INT_PCI ; 
 int PCIBIOS_SUCCESSFUL ; 
 unsigned char PCI_ACCESS_WRITE ; 
 scalar_t__ PCI_BASE_REG ; 
 unsigned long* PCI_CONFIG_SPACE_REG ; 
 int /*<<< orphan*/  bpci_interrupt ; 
 int /*<<< orphan*/  bpci_lock ; 
 unsigned long FUNC0 (unsigned long) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 unsigned long FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  proc_init ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct msp_pci_regs*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC10(unsigned char access_type,
				struct pci_bus *bus,
				unsigned int devfn,
				unsigned char where,
				u32 *data)
{
	struct msp_pci_regs *preg = (void *)PCI_BASE_REG;
	unsigned char bus_num = bus->number;
	unsigned char dev_fn = (unsigned char)devfn;
	unsigned long flags;
	unsigned long intr;
	unsigned long value;
	static char pciirqflag;
	int ret;
#if defined(CONFIG_PMC_MSP7120_GW) || defined(CONFIG_PMC_MSP7120_EVAL)
	unsigned int	vpe_status;
#endif

#if defined(CONFIG_PROC_FS) && defined(PCI_COUNTERS)
	if (proc_init == 0) {
		pci_proc_init();
		proc_init = ~0;
	}
#endif /* CONFIG_PROC_FS && PCI_COUNTERS */

	/*
	 * Just the first time this function invokes, allocate
	 * an interrupt line for PCI host status interrupts. The
	 * allocation assigns an interrupt handler to the interrupt.
	 */
	if (pciirqflag == 0) {
		ret = FUNC7(MSP_INT_PCI,/* Hardcoded internal MSP7120 wiring */
				bpci_interrupt,
				IRQF_SHARED | IRQF_DISABLED,
				"PMC MSP PCI Host",
				preg);
		if (ret != 0)
			return ret;
		pciirqflag = ~0;
	}

#if defined(CONFIG_PMC_MSP7120_GW) || defined(CONFIG_PMC_MSP7120_EVAL)
	local_irq_save(flags);
	vpe_status = dvpe();
#else
	FUNC8(&bpci_lock, flags);
#endif

	/*
	 * Clear PCI cause register bits.
	 *
	 * In Polo, the PCI Host had a dedicated DMA called the
	 * Block Copy (not to be confused with the general purpose Block
	 * Copy Engine block). There appear to have been special interrupts
	 * for this Block Copy, called Block Copy 0 Fault (BC0F) and
	 * Block Copy 1 Fault (BC1F). MSP4200 and MSP7120 don't have this
	 * dedicated Block Copy block, so these two interrupts are now
	 * marked reserved. In case the  Block Copy is resurrected in a
	 * future design, maintain the code that treats these two interrupts
	 * specially.
	 *
	 * Write to clear all interrupts in the PCI status register, aside
	 * from BC0F and BC1F.
	 */
	preg->if_status = ~(BPCI_IFSTATUS_BC0F | BPCI_IFSTATUS_BC1F);

	/* Setup address that is to appear on PCI bus */
	preg->config_addr = BPCI_CFGADDR_ENABLE	|
		(bus_num << BPCI_CFGADDR_BUSNUM_SHF) |
		(dev_fn << BPCI_CFGADDR_FUNCTNUM_SHF) |
		(where & 0xFC);

	/* IF access is a PCI configuration write */
	if (access_type == PCI_ACCESS_WRITE) {
		value = FUNC0(*data);
		*PCI_CONFIG_SPACE_REG = value;
	} else {
		/* ELSE access is a PCI configuration read */
		value = FUNC3(*PCI_CONFIG_SPACE_REG);
		*data = value;
	}

	/*
	 * Check if the PCI configuration cycle (rd or wr) succeeded, by
	 * checking the status bits for errors like master or target abort.
	 */
	intr = preg->if_status;

	/* Clear config access */
	preg->config_addr = 0;

	/* IF error occurred */
	if (intr & ~(BPCI_IFSTATUS_BC0F | BPCI_IFSTATUS_BC1F)) {
		/* Clear status bits */
		preg->if_status = ~(BPCI_IFSTATUS_BC0F | BPCI_IFSTATUS_BC1F);

#if defined(CONFIG_PMC_MSP7120_GW) || defined(CONFIG_PMC_MSP7120_EVAL)
		evpe(vpe_status);
		local_irq_restore(flags);
#else
		FUNC9(&bpci_lock, flags);
#endif

		return -1;
	}

#if defined(CONFIG_PMC_MSP7120_GW) || defined(CONFIG_PMC_MSP7120_EVAL)
	evpe(vpe_status);
	local_irq_restore(flags);
#else
	FUNC9(&bpci_lock, flags);
#endif

	return PCIBIOS_SUCCESSFUL;
}