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
typedef  int /*<<< orphan*/  u16 ;
struct plx_dma_desc {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  minor; scalar_t__ irq; } ;
struct TYPE_2__ {long intCount; int fifoLen; scalar_t__ pci_dev; scalar_t__ got_regions; scalar_t__ lcfg; scalar_t__ las1; scalar_t__ las0; int /*<<< orphan*/ * dma0Chain; int /*<<< orphan*/  dma0ChainPhysAddr; int /*<<< orphan*/ ** dma0Buff; int /*<<< orphan*/ * dma0BuffPhysAddr; } ;

/* Variables and functions */
 int DMA_CHAIN_COUNT ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,...) ; 
 int ICS_DMA0_E ; 
 int ICS_DMA1_E ; 
 int ICS_PIE ; 
 int ICS_PLIE ; 
 int /*<<< orphan*/  FUNC1 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct comedi_device*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct comedi_device*) ; 
 int FUNC8 (struct comedi_device*) ; 
 int FUNC9 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct comedi_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct comedi_device *dev)
{
#ifdef USE_DMA
	int index;
#endif

	FUNC0("comedi%d: rtd520: removing (%ld ints)\n",
		dev->minor, (devpriv ? devpriv->intCount : 0L));
	if (devpriv && devpriv->lcfg) {
		FUNC0
		    ("(int status 0x%x, overrun status 0x%x, fifo status 0x%x)...\n",
		     0xffff & FUNC8(dev),
		     0xffff & FUNC7(dev),
		     (0xffff & FUNC3(dev)) ^ 0x6666);
	}

	if (devpriv) {
		/* Shut down any board ops by resetting it */
#ifdef USE_DMA
		if (devpriv->lcfg) {
			RtdDma0Control(dev, 0);	/* disable DMA */
			RtdDma1Control(dev, 0);	/* disable DMA */
			RtdPlxInterruptWrite(dev, ICS_PIE | ICS_PLIE);
		}
#endif /* USE_DMA */
		if (devpriv->las0) {
			FUNC11(dev);
			FUNC6(dev, 0);
			FUNC5(dev, ~0);
			FUNC4(dev);	/* clears bits set by mask */
		}
#ifdef USE_DMA
		/* release DMA */
		for (index = 0; index < DMA_CHAIN_COUNT; index++) {
			if (NULL != devpriv->dma0Buff[index]) {
				pci_free_consistent(devpriv->pci_dev,
						    sizeof(u16) *
						    devpriv->fifoLen / 2,
						    devpriv->dma0Buff[index],
						    devpriv->
						    dma0BuffPhysAddr[index]);
				devpriv->dma0Buff[index] = NULL;
			}
		}
		if (NULL != devpriv->dma0Chain) {
			pci_free_consistent(devpriv->pci_dev,
					    sizeof(struct plx_dma_desc) *
					    DMA_CHAIN_COUNT, devpriv->dma0Chain,
					    devpriv->dma0ChainPhysAddr);
			devpriv->dma0Chain = NULL;
		}
#endif /* USE_DMA */

		/* release IRQ */
		if (dev->irq) {
			/* disable interrupt controller */
			FUNC10(dev, FUNC9(dev)
					     & ~(ICS_PLIE | ICS_DMA0_E |
						 ICS_DMA1_E));
			FUNC13(dev->irq, dev);
		}

		/* release all regions that were allocated */
		if (devpriv->las0) {
			FUNC14(devpriv->las0);
		}
		if (devpriv->las1) {
			FUNC14(devpriv->las1);
		}
		if (devpriv->lcfg) {
			FUNC14(devpriv->lcfg);
		}
		if (devpriv->pci_dev) {
			if (devpriv->got_regions) {
				FUNC12(devpriv->pci_dev);
			}
			FUNC15(devpriv->pci_dev);
		}
	}

	FUNC17("comedi%d: rtd520: removed.\n", dev->minor);

	return 0;
}