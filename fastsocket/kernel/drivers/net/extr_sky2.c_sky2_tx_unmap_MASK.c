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
struct tx_ring_info {int flags; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TX_MAP_PAGE ; 
 int TX_MAP_SINGLE ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  FUNC0 (struct tx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct pci_dev *pdev, struct tx_ring_info *re)
{
	if (re->flags & TX_MAP_SINGLE)
		FUNC3(pdev, FUNC0(re, mapaddr),
				 FUNC1(re, maplen),
				 PCI_DMA_TODEVICE);
	else if (re->flags & TX_MAP_PAGE)
		FUNC2(pdev, FUNC0(re, mapaddr),
			       FUNC1(re, maplen),
			       PCI_DMA_TODEVICE);
	re->flags = 0;
}