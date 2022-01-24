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
typedef  scalar_t__ u32 ;
struct typhoon {int /*<<< orphan*/  pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  volatile addr; } ;
struct tx_desc {int flags; unsigned long tx_addr; int /*<<< orphan*/  len; TYPE_1__ frag; } ;
struct transmit_ring {scalar_t__ lastRead; scalar_t__ ringBase; } ;
struct sk_buff {int dummy; } ;
typedef  scalar_t__ dma_addr_t ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int TYPHOON_FRAG_DESC ; 
 int TYPHOON_TX_DESC ; 
 int TYPHOON_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  volatile) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 

__attribute__((used)) static u32
FUNC5(struct typhoon *tp, struct transmit_ring *txRing,
			volatile __le32 * index)
{
	u32 lastRead = txRing->lastRead;
	struct tx_desc *tx;
	dma_addr_t skb_dma;
	int dma_len;
	int type;

	while(lastRead != FUNC2(*index)) {
		tx = (struct tx_desc *) (txRing->ringBase + lastRead);
		type = tx->flags & TYPHOON_TYPE_MASK;

		if(type == TYPHOON_TX_DESC) {
			/* This tx_desc describes a packet.
			 */
			unsigned long ptr = tx->tx_addr;
			struct sk_buff *skb = (struct sk_buff *) ptr;
			FUNC0(skb);
		} else if(type == TYPHOON_FRAG_DESC) {
			/* This tx_desc describes a memory mapping. Free it.
			 */
			skb_dma = (dma_addr_t) FUNC2(tx->frag.addr);
			dma_len = FUNC1(tx->len);
			FUNC3(tp->pdev, skb_dma, dma_len,
				       PCI_DMA_TODEVICE);
		}

		tx->flags = 0;
		FUNC4(&lastRead, 1);
	}

	return lastRead;
}