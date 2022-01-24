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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct pci_dev {int dummy; } ;
struct dscc4_dev_priv {struct sk_buff** rx_skbuff; struct sk_buff** tx_skbuff; int /*<<< orphan*/  rx_fd_dma; int /*<<< orphan*/  tx_fd_dma; struct TxFD* rx_fd; struct TxFD* tx_fd; TYPE_1__* pci_priv; } ;
struct TxFD {int /*<<< orphan*/  data; } ;
struct RxFD {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct pci_dev* pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDLC_MAX_MRU ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  RX_TOTAL_SIZE ; 
 int TX_RING_SIZE ; 
 int /*<<< orphan*/  TX_TOTAL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_dev*,int /*<<< orphan*/ ,struct TxFD*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct dscc4_dev_priv *dpriv)
{
	struct pci_dev *pdev = dpriv->pci_priv->pdev;
	struct TxFD *tx_fd = dpriv->tx_fd;
	struct RxFD *rx_fd = dpriv->rx_fd;
	struct sk_buff **skbuff;
	int i;

	FUNC3(pdev, TX_TOTAL_SIZE, tx_fd, dpriv->tx_fd_dma);
	FUNC3(pdev, RX_TOTAL_SIZE, rx_fd, dpriv->rx_fd_dma);

	skbuff = dpriv->tx_skbuff;
	for (i = 0; i < TX_RING_SIZE; i++) {
		if (*skbuff) {
			FUNC4(pdev, FUNC2(tx_fd->data),
				(*skbuff)->len, PCI_DMA_TODEVICE);
			FUNC1(*skbuff);
		}
		skbuff++;
		tx_fd++;
	}

	skbuff = dpriv->rx_skbuff;
	for (i = 0; i < RX_RING_SIZE; i++) {
		if (*skbuff) {
			FUNC4(pdev, FUNC2(rx_fd->data),
				FUNC0(HDLC_MAX_MRU), PCI_DMA_FROMDEVICE);
			FUNC1(*skbuff);
		}
		skbuff++;
		rx_fd++;
	}
}