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
typedef  int u64 ;
typedef  void* u32 ;
struct sn_pcibus_provider {int (* dma_map_consistent ) (struct pci_dev*,int /*<<< orphan*/ ,int,int) ;} ;
struct sn_irq_info {int irq_int_bit; int /*<<< orphan*/  irq_xtalkaddr; void* irq_bridge; int /*<<< orphan*/  irq_bridge_type; } ;
struct pcibus_bussoft {scalar_t__ bs_base; int /*<<< orphan*/  bs_asic_type; } ;
struct pci_dev {int dummy; } ;
struct msi_msg {int data; void* address_lo; void* address_hi; } ;
struct TYPE_3__ {int /*<<< orphan*/  is_64; } ;
struct msi_desc {TYPE_1__ msi_attrib; } ;
typedef  int nasid_t ;
struct TYPE_4__ {int pci_addr; struct sn_irq_info* sn_irq_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (scalar_t__) ; 
 int SN_DMA_ADDR_XIO ; 
 int SN_DMA_MSI ; 
 struct sn_pcibus_provider* FUNC1 (struct pci_dev*) ; 
 struct pcibus_bussoft* FUNC2 (struct pci_dev*) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  handle_edge_irq ; 
 int /*<<< orphan*/  FUNC7 (struct sn_irq_info*) ; 
 struct sn_irq_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,struct msi_desc*) ; 
 int FUNC11 (int,int,struct sn_irq_info*,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int,struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*,struct sn_irq_info*) ; 
 int /*<<< orphan*/  sn_msi_chip ; 
 TYPE_2__* sn_msi_info ; 
 int FUNC14 (struct pci_dev*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int,struct msi_msg*) ; 

int FUNC16(struct pci_dev *pdev, struct msi_desc *entry)
{
	struct msi_msg msg;
	int widget;
	int status;
	nasid_t nasid;
	u64 bus_addr;
	struct sn_irq_info *sn_irq_info;
	struct pcibus_bussoft *bussoft = FUNC2(pdev);
	struct sn_pcibus_provider *provider = FUNC1(pdev);
	int irq;

	if (!entry->msi_attrib.is_64)
		return -EINVAL;

	if (bussoft == NULL)
		return -EINVAL;

	if (provider == NULL || provider->dma_map_consistent == NULL)
		return -EINVAL;

	irq = FUNC5();
	if (irq < 0)
		return irq;

	/*
	 * Set up the vector plumbing.  Let the prom (via sn_intr_alloc)
	 * decide which cpu to direct this msi at by default.
	 */

	nasid = FUNC0(bussoft->bs_base);
	widget = (nasid & 1) ?
			FUNC4(bussoft->bs_base) :
			FUNC3(bussoft->bs_base);

	sn_irq_info = FUNC8(sizeof(struct sn_irq_info), GFP_KERNEL);
	if (! sn_irq_info) {
		FUNC6(irq);
		return -ENOMEM;
	}

	status = FUNC11(nasid, widget, sn_irq_info, irq, -1, -1);
	if (status) {
		FUNC7(sn_irq_info);
		FUNC6(irq);
		return -ENOMEM;
	}

	sn_irq_info->irq_int_bit = -1;		/* mark this as an MSI irq */
	FUNC13(pdev, sn_irq_info);

	/* Prom probably should fill these in, but doesn't ... */
	sn_irq_info->irq_bridge_type = bussoft->bs_asic_type;
	sn_irq_info->irq_bridge = (void *)bussoft->bs_base;

	/*
	 * Map the xio address into bus space
	 */
	bus_addr = (*provider->dma_map_consistent)(pdev,
					sn_irq_info->irq_xtalkaddr,
					sizeof(sn_irq_info->irq_xtalkaddr),
					SN_DMA_MSI|SN_DMA_ADDR_XIO);
	if (! bus_addr) {
		FUNC12(nasid, widget, sn_irq_info);
		FUNC7(sn_irq_info);
		FUNC6(irq);
		return -ENOMEM;
	}

	sn_msi_info[irq].sn_irq_info = sn_irq_info;
	sn_msi_info[irq].pci_addr = bus_addr;

	msg.address_hi = (u32)(bus_addr >> 32);
	msg.address_lo = (u32)(bus_addr & 0x00000000ffffffff);

	/*
	 * In the SN platform, bit 16 is a "send vector" bit which
	 * must be present in order to move the vector through the system.
	 */
	msg.data = 0x100 + irq;

	FUNC10(irq, entry);
	FUNC15(irq, &msg);
	FUNC9(irq, &sn_msi_chip, handle_edge_irq);

	return 0;
}