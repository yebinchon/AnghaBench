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
struct r592_device {int /*<<< orphan*/  mmio; int /*<<< orphan*/  io_thread; int /*<<< orphan*/  dummy_dma_page_physical_address; scalar_t__ dummy_dma_page; int /*<<< orphan*/  irq; int /*<<< orphan*/  detect_timer; int /*<<< orphan*/  pio_fifo; int /*<<< orphan*/  dma_done; int /*<<< orphan*/  io_thread_lock; int /*<<< orphan*/  irq_lock; struct pci_dev* pci_dev; struct memstick_host* host; } ;
struct pci_device_id {int dummy; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct memstick_host {int /*<<< orphan*/  set_param; int /*<<< orphan*/  request; int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MEMSTICK_CAP_PAR4 ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct r592_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct r592_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct memstick_host*) ; 
 struct memstick_host* FUNC10 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct memstick_host*) ; 
 struct r592_device* FUNC12 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*) ; 
 int FUNC16 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct pci_dev*) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC21 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*,struct r592_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC24 (struct r592_device*) ; 
 int /*<<< orphan*/  r592_detect_timer ; 
 int /*<<< orphan*/  r592_irq ; 
 int /*<<< orphan*/  r592_process_thread ; 
 int /*<<< orphan*/  r592_set_param ; 
 int /*<<< orphan*/  FUNC25 (struct r592_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  r592_submit_req ; 
 int /*<<< orphan*/  FUNC26 (struct r592_device*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct r592_device*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(struct pci_dev *pdev, const struct pci_device_id *id)
{
	int error = -ENOMEM;
	struct memstick_host *host;
	struct r592_device *dev;

	/* Allocate memory */
	host = FUNC10(sizeof(struct r592_device), &pdev->dev);
	if (!host)
		goto error1;

	dev = FUNC12(host);
	dev->host = host;
	dev->pci_dev = pdev;
	FUNC22(pdev, dev);

	/* pci initialization */
	error = FUNC16(pdev);
	if (error)
		goto error2;

	FUNC23(pdev);
	error = FUNC21(pdev, FUNC0(32));
	if (error)
		goto error3;

	error = FUNC20(pdev, DRV_NAME);
	if (error)
		goto error3;

	dev->mmio = FUNC18(pdev, 0);
	if (!dev->mmio)
		goto error4;

	dev->irq = pdev->irq;
	FUNC29(&dev->irq_lock);
	FUNC29(&dev->io_thread_lock);
	FUNC5(&dev->dma_done);
	FUNC1(dev->pio_fifo);
	FUNC28(&dev->detect_timer,
		r592_detect_timer, (long unsigned int)dev);

	/* Host initialization */
	host->caps = MEMSTICK_CAP_PAR4;
	host->request = r592_submit_req;
	host->set_param = r592_set_param;
	FUNC24(dev);

	dev->io_thread = FUNC7(r592_process_thread, dev, "r592_io");
	if (FUNC2(dev->io_thread)) {
		error = FUNC3(dev->io_thread);
		goto error5;
	}

	/* This is just a precation, so don't fail */
	dev->dummy_dma_page = FUNC14(pdev, PAGE_SIZE,
		&dev->dummy_dma_page_physical_address);
	FUNC25(dev , 0);

	if (FUNC27(dev->irq, &r592_irq, IRQF_SHARED,
			  DRV_NAME, dev))
		goto error6;

	FUNC26(dev);
	if (FUNC9(host))
		goto error7;

	FUNC13("driver succesfully loaded");
	return 0;
error7:
	FUNC4(dev->irq, dev);
error6:
	if (dev->dummy_dma_page)
		FUNC17(pdev, PAGE_SIZE, dev->dummy_dma_page,
			dev->dummy_dma_page_physical_address);

	FUNC8(dev->io_thread);
error5:
	FUNC6(dev->mmio);
error4:
	FUNC19(pdev);
error3:
	FUNC15(pdev);
error2:
	FUNC11(host);
error1:
	return error;
}