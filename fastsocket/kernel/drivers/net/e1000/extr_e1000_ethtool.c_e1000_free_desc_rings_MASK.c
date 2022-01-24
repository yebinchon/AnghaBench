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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct e1000_tx_ring {int count; TYPE_1__* buffer_info; int /*<<< orphan*/ * desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; } ;
struct e1000_rx_ring {int count; TYPE_1__* buffer_info; int /*<<< orphan*/ * desc; int /*<<< orphan*/  dma; int /*<<< orphan*/  size; } ;
struct e1000_adapter {struct pci_dev* pdev; struct e1000_rx_ring test_rx_ring; struct e1000_tx_ring test_tx_ring; } ;
struct TYPE_2__ {scalar_t__ skb; int /*<<< orphan*/  length; scalar_t__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC4(struct e1000_adapter *adapter)
{
	struct e1000_tx_ring *txdr = &adapter->test_tx_ring;
	struct e1000_rx_ring *rxdr = &adapter->test_rx_ring;
	struct pci_dev *pdev = adapter->pdev;
	int i;

	if (txdr->desc && txdr->buffer_info) {
		for (i = 0; i < txdr->count; i++) {
			if (txdr->buffer_info[i].dma)
				FUNC2(&pdev->dev,
						 txdr->buffer_info[i].dma,
						 txdr->buffer_info[i].length,
						 DMA_TO_DEVICE);
			if (txdr->buffer_info[i].skb)
				FUNC0(txdr->buffer_info[i].skb);
		}
	}

	if (rxdr->desc && rxdr->buffer_info) {
		for (i = 0; i < rxdr->count; i++) {
			if (rxdr->buffer_info[i].dma)
				FUNC2(&pdev->dev,
						 rxdr->buffer_info[i].dma,
						 rxdr->buffer_info[i].length,
						 DMA_FROM_DEVICE);
			if (rxdr->buffer_info[i].skb)
				FUNC0(rxdr->buffer_info[i].skb);
		}
	}

	if (txdr->desc) {
		FUNC1(&pdev->dev, txdr->size, txdr->desc,
				  txdr->dma);
		txdr->desc = NULL;
	}
	if (rxdr->desc) {
		FUNC1(&pdev->dev, rxdr->size, rxdr->desc,
				  rxdr->dma);
		rxdr->desc = NULL;
	}

	FUNC3(txdr->buffer_info);
	txdr->buffer_info = NULL;
	FUNC3(rxdr->buffer_info);
	rxdr->buffer_info = NULL;
}