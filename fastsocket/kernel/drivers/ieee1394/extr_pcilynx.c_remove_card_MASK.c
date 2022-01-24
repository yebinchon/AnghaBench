#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tq; int /*<<< orphan*/ * page_dma; int /*<<< orphan*/ * page; } ;
struct TYPE_6__ {int /*<<< orphan*/  reg_1394a; } ;
struct ti_lynx {int state; TYPE_2__ iso_rcv; int /*<<< orphan*/  pcl_mem_dma; int /*<<< orphan*/  pcl_mem; TYPE_3__* dev; int /*<<< orphan*/  rcv_page_dma; int /*<<< orphan*/  rcv_page; int /*<<< orphan*/  aux_port; int /*<<< orphan*/  local_ram; int /*<<< orphan*/  local_rom; int /*<<< orphan*/  registers; TYPE_4__* host; TYPE_1__ phyic; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  device; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA0_CHAN_CTRL ; 
 int ISORCV_PAGES ; 
 int /*<<< orphan*/  LOCALRAM_SIZE ; 
 int /*<<< orphan*/  LONG_RESET_NO_FORCE_ROOT ; 
 int /*<<< orphan*/  MISC_CONTROL ; 
 int /*<<< orphan*/  MISC_CONTROL_SWRESET ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  PCI_INT_ENABLE ; 
 int /*<<< orphan*/  RESET_BUS ; 
#define  clear 134 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ti_lynx*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ti_lynx*,int) ; 
#define  have_1394_buffers 133 
#define  have_aux_buf 132 
#define  have_intr 131 
#define  have_iomappings 130 
#define  have_pcl_mem 129 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
#define  is_host 128 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ti_lynx* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct ti_lynx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ti_lynx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ti_lynx*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct pci_dev *dev)
{
        struct ti_lynx *lynx;
	struct device *lynx_dev;
        int i;

        lynx = FUNC7(dev);
        if (!lynx) return;
        FUNC8(dev, NULL);

	lynx_dev = FUNC1(&lynx->host->device);

        switch (lynx->state) {
        case is_host:
                FUNC11(lynx, PCI_INT_ENABLE, 0);
                FUNC3(lynx->host);
        case have_intr:
                FUNC11(lynx, PCI_INT_ENABLE, 0);
                FUNC0(lynx->dev->irq, lynx);

		/* Disable IRM Contender and LCtrl */
		if (lynx->phyic.reg_1394a)
			FUNC12(lynx, 4, ~0xc0 & FUNC2(lynx, 4));

		/* Let all other nodes know to ignore us */
		FUNC5(lynx->host, RESET_BUS, LONG_RESET_NO_FORCE_ROOT);

        case have_iomappings:
                FUNC10(lynx, MISC_CONTROL, MISC_CONTROL_SWRESET);
                /* Fix buggy cards with autoboot pin not tied low: */
                FUNC11(lynx, DMA0_CHAN_CTRL, 0);
                FUNC4(lynx->registers);
                FUNC4(lynx->local_rom);
                FUNC4(lynx->local_ram);
                FUNC4(lynx->aux_port);
        case have_1394_buffers:
                for (i = 0; i < ISORCV_PAGES; i++) {
                        if (lynx->iso_rcv.page[i]) {
                                FUNC6(lynx->dev, PAGE_SIZE,
                                                    lynx->iso_rcv.page[i],
                                                    lynx->iso_rcv.page_dma[i]);
                        }
                }
                FUNC6(lynx->dev, PAGE_SIZE, lynx->rcv_page,
                                    lynx->rcv_page_dma);
        case have_aux_buf:
        case have_pcl_mem:
                FUNC6(lynx->dev, LOCALRAM_SIZE, lynx->pcl_mem,
                                    lynx->pcl_mem_dma);
        case clear:
                /* do nothing - already freed */
                ;
        }

	FUNC13(&lynx->iso_rcv.tq);

	if (lynx_dev)
		FUNC9(lynx_dev);
}