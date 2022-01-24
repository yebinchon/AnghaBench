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
struct r592_device {int /*<<< orphan*/  dummy_dma_page_physical_address; scalar_t__ dummy_dma_page; int /*<<< orphan*/  host; int /*<<< orphan*/  mmio; int /*<<< orphan*/  irq; TYPE_1__* req; int /*<<< orphan*/  io_thread; } ;
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETIME ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct r592_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct r592_device* FUNC8 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct r592_device*,int) ; 

__attribute__((used)) static void FUNC11(struct pci_dev *pdev)
{
	int error = 0;
	struct r592_device *dev = FUNC8(pdev);

	/* Stop the processing thread.
	That ensures that we won't take any more requests */
	FUNC2(dev->io_thread);

	FUNC10(dev, false);

	while (!error && dev->req) {
		dev->req->error = -ETIME;
		error = FUNC4(dev->host, &dev->req);
	}
	FUNC5(dev->host);

	FUNC0(dev->irq, dev);
	FUNC1(dev->mmio);
	FUNC9(pdev);
	FUNC6(pdev);
	FUNC3(dev->host);

	if (dev->dummy_dma_page)
		FUNC7(pdev, PAGE_SIZE, dev->dummy_dma_page,
			dev->dummy_dma_page_physical_address);
}