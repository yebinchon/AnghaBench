#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* buffer_addr; } ;
union e1000_rx_desc_extended {TYPE_2__ read; } ;
typedef  int u64 ;
typedef  int u32 ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {scalar_t__ data; } ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct e1000_tx_desc {TYPE_5__ upper; TYPE_4__ lower; void* buffer_addr; } ;
struct e1000_ring {int count; int size; TYPE_3__* buffer_info; scalar_t__ dma; scalar_t__ next_to_clean; scalar_t__ next_to_use; void* desc; } ;
struct TYPE_6__ {int mc_filter_type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct e1000_buffer {int dummy; } ;
struct e1000_adapter {int flags2; struct e1000_hw hw; struct pci_dev* pdev; struct e1000_ring test_rx_ring; struct e1000_ring test_tx_ring; } ;
struct TYPE_8__ {int length; void* dma; struct sk_buff* skb; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int E1000_COLD_SHIFT ; 
 int E1000_COLLISION_DISTANCE ; 
 int E1000_COLLISION_THRESHOLD ; 
 int E1000_CT_SHIFT ; 
 int E1000_DEFAULT_RXD ; 
 int E1000_DEFAULT_TXD ; 
 int E1000_RCTL_BAM ; 
 int E1000_RCTL_EN ; 
 int E1000_RCTL_LBM_NO ; 
 int E1000_RCTL_LPE ; 
 int E1000_RCTL_MO_SHIFT ; 
 int E1000_RCTL_MPE ; 
 int E1000_RCTL_RDMTS_HALF ; 
 int E1000_RCTL_SBP ; 
 int E1000_RCTL_SECRC ; 
 int E1000_RCTL_SZ_2048 ; 
 int E1000_RCTL_UPE ; 
 union e1000_rx_desc_extended* FUNC1 (struct e1000_ring,int) ; 
 int E1000_TCTL_EN ; 
 int E1000_TCTL_MULR ; 
 int E1000_TCTL_PSP ; 
 int E1000_TXD_CMD_EOP ; 
 int E1000_TXD_CMD_IFCS ; 
 int E1000_TXD_CMD_RS ; 
 struct e1000_tx_desc* FUNC2 (struct e1000_ring,int) ; 
 int FLAG2_NO_DISABLE_RX ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NET_IP_ALIGN ; 
 int /*<<< orphan*/  RCTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCTL ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 void* FUNC15 (void*) ; 
 void* FUNC16 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC19 (struct e1000_adapter*) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 void* FUNC22 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC26(struct e1000_adapter *adapter)
{
	struct e1000_ring *tx_ring = &adapter->test_tx_ring;
	struct e1000_ring *rx_ring = &adapter->test_rx_ring;
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_hw *hw = &adapter->hw;
	u32 rctl;
	int i;
	int ret_val;

	/* Setup Tx descriptor ring and Tx buffers */

	if (!tx_ring->count)
		tx_ring->count = E1000_DEFAULT_TXD;

	tx_ring->buffer_info = FUNC22(tx_ring->count,
				       sizeof(struct e1000_buffer), GFP_KERNEL);
	if (!tx_ring->buffer_info) {
		ret_val = 1;
		goto err_nomem;
	}

	tx_ring->size = tx_ring->count * sizeof(struct e1000_tx_desc);
	tx_ring->size = FUNC0(tx_ring->size, 4096);
	tx_ring->desc = FUNC16(&pdev->dev, tx_ring->size,
					   &tx_ring->dma, GFP_KERNEL);
	if (!tx_ring->desc) {
		ret_val = 2;
		goto err_nomem;
	}
	tx_ring->next_to_use = 0;
	tx_ring->next_to_clean = 0;

	FUNC21(FUNC9(0), ((u64)tx_ring->dma & 0x00000000FFFFFFFF));
	FUNC21(FUNC8(0), ((u64)tx_ring->dma >> 32));
	FUNC21(FUNC11(0), tx_ring->count * sizeof(struct e1000_tx_desc));
	FUNC21(FUNC10(0), 0);
	FUNC21(FUNC12(0), 0);
	FUNC21(TCTL, E1000_TCTL_PSP | E1000_TCTL_EN | E1000_TCTL_MULR |
	     E1000_COLLISION_THRESHOLD << E1000_CT_SHIFT |
	     E1000_COLLISION_DISTANCE << E1000_COLD_SHIFT);

	for (i = 0; i < tx_ring->count; i++) {
		struct e1000_tx_desc *tx_desc = FUNC2(*tx_ring, i);
		struct sk_buff *skb;
		unsigned int skb_size = 1024;

		skb = FUNC13(skb_size, GFP_KERNEL);
		if (!skb) {
			ret_val = 3;
			goto err_nomem;
		}
		FUNC24(skb, skb_size);
		tx_ring->buffer_info[i].skb = skb;
		tx_ring->buffer_info[i].length = skb->len;
		tx_ring->buffer_info[i].dma =
		    FUNC17(&pdev->dev, skb->data, skb->len,
				   DMA_TO_DEVICE);
		if (FUNC18(&pdev->dev,
				      tx_ring->buffer_info[i].dma)) {
			ret_val = 4;
			goto err_nomem;
		}
		tx_desc->buffer_addr = FUNC15(tx_ring->buffer_info[i].dma);
		tx_desc->lower.data = FUNC14(skb->len);
		tx_desc->lower.data |= FUNC14(E1000_TXD_CMD_EOP |
						   E1000_TXD_CMD_IFCS |
						   E1000_TXD_CMD_RS);
		tx_desc->upper.data = 0;
	}

	/* Setup Rx descriptor ring and Rx buffers */

	if (!rx_ring->count)
		rx_ring->count = E1000_DEFAULT_RXD;

	rx_ring->buffer_info = FUNC22(rx_ring->count,
				       sizeof(struct e1000_buffer), GFP_KERNEL);
	if (!rx_ring->buffer_info) {
		ret_val = 5;
		goto err_nomem;
	}

	rx_ring->size = rx_ring->count * sizeof(union e1000_rx_desc_extended);
	rx_ring->desc = FUNC16(&pdev->dev, rx_ring->size,
					   &rx_ring->dma, GFP_KERNEL);
	if (!rx_ring->desc) {
		ret_val = 6;
		goto err_nomem;
	}
	rx_ring->next_to_use = 0;
	rx_ring->next_to_clean = 0;

	rctl = FUNC20(RCTL);
	if (!(adapter->flags2 & FLAG2_NO_DISABLE_RX))
		FUNC21(RCTL, rctl & ~E1000_RCTL_EN);
	FUNC21(FUNC4(0), ((u64)rx_ring->dma & 0xFFFFFFFF));
	FUNC21(FUNC3(0), ((u64)rx_ring->dma >> 32));
	FUNC21(FUNC6(0), rx_ring->size);
	FUNC21(FUNC5(0), 0);
	FUNC21(FUNC7(0), 0);
	rctl = E1000_RCTL_EN | E1000_RCTL_BAM | E1000_RCTL_SZ_2048 |
	    E1000_RCTL_UPE | E1000_RCTL_MPE | E1000_RCTL_LPE |
	    E1000_RCTL_SBP | E1000_RCTL_SECRC |
	    E1000_RCTL_LBM_NO | E1000_RCTL_RDMTS_HALF |
	    (adapter->hw.mac.mc_filter_type << E1000_RCTL_MO_SHIFT);
	FUNC21(RCTL, rctl);

	for (i = 0; i < rx_ring->count; i++) {
		union e1000_rx_desc_extended *rx_desc;
		struct sk_buff *skb;

		skb = FUNC13(2048 + NET_IP_ALIGN, GFP_KERNEL);
		if (!skb) {
			ret_val = 7;
			goto err_nomem;
		}
		FUNC25(skb, NET_IP_ALIGN);
		rx_ring->buffer_info[i].skb = skb;
		rx_ring->buffer_info[i].dma =
		    FUNC17(&pdev->dev, skb->data, 2048,
				   DMA_FROM_DEVICE);
		if (FUNC18(&pdev->dev,
				      rx_ring->buffer_info[i].dma)) {
			ret_val = 8;
			goto err_nomem;
		}
		rx_desc = FUNC1(*rx_ring, i);
		rx_desc->read.buffer_addr =
		    FUNC15(rx_ring->buffer_info[i].dma);
		FUNC23(skb->data, 0x00, skb->len);
	}

	return 0;

err_nomem:
	FUNC19(adapter);
	return ret_val;
}