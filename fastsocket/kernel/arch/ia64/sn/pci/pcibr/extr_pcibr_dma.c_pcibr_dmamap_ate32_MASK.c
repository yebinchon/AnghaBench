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
typedef  size_t u8 ;
typedef  int u64 ;
struct pcidev_info {TYPE_1__* pdi_linux_pcidev; struct pcidev_info* pdi_host_pcidev_info; scalar_t__ pdi_pcibus_info; } ;
struct pcibus_info {int pbi_hub_xid; int* pbi_devreg; } ;
typedef  int dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  devfn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (size_t) ; 
 int FUNC2 (int) ; 
 int IOPGSIZE ; 
 scalar_t__ FUNC3 (struct pcibus_info*) ; 
 scalar_t__ FUNC4 (struct pcibus_info*) ; 
 scalar_t__ FUNC5 (struct pcibus_info*) ; 
 int /*<<< orphan*/  FUNC6 (int,size_t) ; 
 int PCI32_ATE_MSI ; 
 int PCI32_ATE_PIO ; 
 int PCI32_ATE_PREF ; 
 int PCI32_ATE_V ; 
 int PCI32_MAPPED_BASE ; 
 int PCIBR_DEV_SWAP_DIR ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int PIC_ATE_TARGETID_SHFT ; 
 scalar_t__ FUNC10 (int) ; 
 int SN_DMA_ADDR_PHYS ; 
 int SN_DMA_MSI ; 
 int /*<<< orphan*/  FUNC11 (struct pcibus_info*,int,int,int) ; 
 int FUNC12 (struct pcibus_info*,int) ; 

__attribute__((used)) static dma_addr_t
FUNC13(struct pcidev_info *info,
		   u64 paddr, size_t req_size, u64 flags, int dma_flags)
{

	struct pcidev_info *pcidev_info = info->pdi_host_pcidev_info;
	struct pcibus_info *pcibus_info = (struct pcibus_info *)pcidev_info->
	    pdi_pcibus_info;
	u8 internal_device = (FUNC7(pcidev_info->pdi_host_pcidev_info->
					    pdi_linux_pcidev->devfn)) - 1;
	int ate_count;
	int ate_index;
	u64 ate_flags = flags | PCI32_ATE_V;
	u64 ate;
	u64 pci_addr;
	u64 xio_addr;
	u64 offset;

	/* PIC in PCI-X mode does not supports 32bit PageMap mode */
	if (FUNC4(pcibus_info) && FUNC3(pcibus_info)) {
		return 0;
	}

	/* Calculate the number of ATEs needed. */
	if (!(FUNC6(paddr, req_size))) {
		ate_count = FUNC1((IOPGSIZE - 1)	/* worst case start offset */
				 +req_size	/* max mapping bytes */
				 - 1) + 1;	/* round UP */
	} else {		/* assume requested target is page aligned */
		ate_count = FUNC1(req_size	/* max mapping bytes */
				 - 1) + 1;	/* round UP */
	}

	/* Get the number of ATEs required. */
	ate_index = FUNC12(pcibus_info, ate_count);
	if (ate_index < 0)
		return 0;

	/* In PCI-X mode, Prefetch not supported */
	if (FUNC3(pcibus_info))
		ate_flags &= ~(PCI32_ATE_PREF);

	if (FUNC10(dma_flags == SN_DMA_ADDR_PHYS))
		xio_addr = FUNC4(pcibus_info) ? FUNC8(paddr) :
	    					      FUNC9(paddr);
	else
		xio_addr = paddr;

	offset = FUNC2(xio_addr);
	ate = ate_flags | (xio_addr - offset);

	/* If PIC, put the targetid in the ATE */
	if (FUNC4(pcibus_info)) {
		ate |= (pcibus_info->pbi_hub_xid << PIC_ATE_TARGETID_SHFT);
	}

	/*
	 * If we're mapping for MSI, set the MSI bit in the ATE.  If it's a
	 * TIOCP based pci bus, we also need to set the PIO bit in the ATE.
	 */
	if (dma_flags & SN_DMA_MSI) {
		ate |= PCI32_ATE_MSI;
		if (FUNC5(pcibus_info))
			ate |= PCI32_ATE_PIO;
	}

	FUNC11(pcibus_info, ate_index, ate_count, ate);

	/*
	 * Set up the DMA mapped Address.
	 */
	pci_addr = PCI32_MAPPED_BASE + offset + IOPGSIZE * ate_index;

	/*
	 * If swap was set in device in pcibr_endian_set()
	 * we need to turn swapping on.
	 */
	if (pcibus_info->pbi_devreg[internal_device] & PCIBR_DEV_SWAP_DIR)
		FUNC0(pci_addr);


	return pci_addr;
}