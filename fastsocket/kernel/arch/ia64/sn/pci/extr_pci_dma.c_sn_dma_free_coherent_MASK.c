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
struct sn_pcibus_provider {int /*<<< orphan*/  (* dma_unmap ) (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct pci_dev {int dummy; } ;
struct device {int /*<<< orphan*/ * bus; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct sn_pcibus_provider* FUNC1 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  pci_bus_type ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct pci_dev* FUNC5 (struct device*) ; 

__attribute__((used)) static void FUNC6(struct device *dev, size_t size, void *cpu_addr,
				 dma_addr_t dma_handle)
{
	struct pci_dev *pdev = FUNC5(dev);
	struct sn_pcibus_provider *provider = FUNC1(pdev);

	FUNC0(dev->bus != &pci_bus_type);

	provider->dma_unmap(pdev, dma_handle, 0);
	FUNC2((unsigned long)cpu_addr, FUNC3(size));
}