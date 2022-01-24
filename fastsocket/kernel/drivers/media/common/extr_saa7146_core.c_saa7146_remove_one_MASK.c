#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  dma_handle; int /*<<< orphan*/ * cpu_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_handle; int /*<<< orphan*/ * cpu_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_handle; int /*<<< orphan*/ * cpu_addr; } ;
struct saa7146_dev {int /*<<< orphan*/  item; int /*<<< orphan*/  mem; TYPE_4__* ext; TYPE_3__ d_rps0; TYPE_2__ d_rps1; TYPE_1__ d_i2c; } ;
struct pci_dev {int /*<<< orphan*/  irq; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* detach ) (struct saa7146_dev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IER ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  SAA7146_RPS_MEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 struct v4l2_device* FUNC7 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  saa7146_num ; 
 int /*<<< orphan*/  FUNC10 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct saa7146_dev*) ; 
 struct saa7146_dev* FUNC12 (struct v4l2_device*) ; 

__attribute__((used)) static void FUNC13(struct pci_dev *pdev)
{
	struct v4l2_device *v4l2_dev = FUNC7(pdev);
	struct saa7146_dev *dev = FUNC12(v4l2_dev);
	struct {
		void *addr;
		dma_addr_t dma;
	} dev_map[] = {
		{ dev->d_i2c.cpu_addr, dev->d_i2c.dma_handle },
		{ dev->d_rps1.cpu_addr, dev->d_rps1.dma_handle },
		{ dev->d_rps0.cpu_addr, dev->d_rps0.dma_handle },
		{ NULL, 0 }
	}, *p;

	FUNC0(("dev:%p\n",dev));

	dev->ext->detach(dev);
	/* Zero the PCI drvdata after use. */
	FUNC9(pdev, NULL);

	/* shut down all video dma transfers */
	FUNC10(dev, MC1, 0x00ff0000);

	/* disable all irqs, release irq-routine */
	FUNC10(dev, IER, 0);

	FUNC1(pdev->irq, dev);

	for (p = dev_map; p->addr; p++)
		FUNC6(pdev, SAA7146_RPS_MEM, p->addr, p->dma);

	FUNC2(dev->mem);
	FUNC8(pdev, 0);
	FUNC4(&dev->item);
	FUNC5(pdev);
	FUNC3(dev);

	saa7146_num--;
}