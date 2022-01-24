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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct pch_gbe_rx_ring {int count; int size; scalar_t__ next_to_use; scalar_t__ next_to_clean; scalar_t__ dma; int /*<<< orphan*/  desc; int /*<<< orphan*/  buffer_info; } ;
struct pch_gbe_rx_desc {int /*<<< orphan*/  gbec_status; } ;
struct pch_gbe_buffer {int dummy; } ;
struct pch_gbe_adapter {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DSC_INIT16 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pch_gbe_rx_desc* FUNC0 (struct pch_gbe_rx_ring,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,unsigned long long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int FUNC7(struct pch_gbe_adapter *adapter,
				struct pch_gbe_rx_ring *rx_ring)
{
	struct pci_dev *pdev = adapter->pdev;
	struct pch_gbe_rx_desc *rx_desc;
	int size;
	int desNo;

	size = (int)sizeof(struct pch_gbe_buffer) * rx_ring->count;
	rx_ring->buffer_info = FUNC6(size);
	if (!rx_ring->buffer_info) {
		FUNC4("Unable to allocate memory for the receive descriptor ring\n");
		return -ENOMEM;
	}
	rx_ring->size = rx_ring->count * (int)sizeof(struct pch_gbe_rx_desc);
	rx_ring->desc =	FUNC1(&pdev->dev, rx_ring->size,
					   &rx_ring->dma, GFP_KERNEL);

	if (!rx_ring->desc) {
		FUNC4("Unable to allocate memory for the receive descriptor ring\n");
		FUNC5(rx_ring->buffer_info);
		return -ENOMEM;
	}
	FUNC2(rx_ring->desc, 0, rx_ring->size);
	rx_ring->next_to_clean = 0;
	rx_ring->next_to_use = 0;
	for (desNo = 0; desNo < rx_ring->count; desNo++) {
		rx_desc = FUNC0(*rx_ring, desNo);
		rx_desc->gbec_status = DSC_INIT16;
	}
	FUNC3("rx_ring->desc = 0x%p  rx_ring->dma = 0x%08llx "
		 "next_to_clean = 0x%08x  next_to_use = 0x%08x\n",
		 rx_ring->desc, (unsigned long long)rx_ring->dma,
		 rx_ring->next_to_clean, rx_ring->next_to_use);
	return 0;
}