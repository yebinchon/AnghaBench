#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; unsigned int data; } ;
struct TYPE_8__ {unsigned int tx_bytes; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dma; TYPE_1__ stats; } ;
struct Xmit_pkt {int dummy; } ;
typedef  int netdev_tx_t ;
struct TYPE_11__ {int direction; struct sk_buff* skb; int /*<<< orphan*/  start_time; } ;
struct TYPE_9__ {unsigned int pkt_len; scalar_t__ buf_seg; scalar_t__ buf_ofs; } ;
struct TYPE_10__ {TYPE_2__ xmit_pkt; } ;
struct TYPE_13__ {int length; TYPE_3__ data; int /*<<< orphan*/  command; } ;
struct TYPE_12__ {unsigned int dma_buffer; int hcr_val; TYPE_4__ current_dma; int /*<<< orphan*/  dmaing; scalar_t__ busy; TYPE_6__ tx_pcb; } ;
typedef  TYPE_5__ elp_device ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_TRANSMIT_PACKET ; 
 int DMAE ; 
 unsigned long MAX_DMA_ADDRESS ; 
 int TCEN ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int elp_debug ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_5__* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static netdev_tx_t FUNC16(struct net_device *dev, struct sk_buff *skb)
{
	elp_device *adapter = FUNC6(dev);
	unsigned long target;
	unsigned long flags;

	/*
	 * make sure the length is even and no shorter than 60 bytes
	 */
	unsigned int nlen = (((skb->len < 60) ? 60 : skb->len) + 1) & (~1);

	if (FUNC15(0, (void *) &adapter->busy)) {
		if (elp_debug >= 2)
			FUNC8("%s: transmit blocked\n", dev->name);
		return false;
	}

	dev->stats.tx_bytes += nlen;

	/*
	 * send the adapter a transmit packet command. Ignore segment and offset
	 * and make sure the length is even
	 */
	adapter->tx_pcb.command = CMD_TRANSMIT_PACKET;
	adapter->tx_pcb.length = sizeof(struct Xmit_pkt);
	adapter->tx_pcb.data.xmit_pkt.buf_ofs
	    = adapter->tx_pcb.data.xmit_pkt.buf_seg = 0;	/* Unused */
	adapter->tx_pcb.data.xmit_pkt.pkt_len = nlen;

	if (!FUNC10(dev, &adapter->tx_pcb)) {
		adapter->busy = 0;
		return false;
	}
	/* if this happens, we die */
	if (FUNC15(0, (void *) &adapter->dmaing))
		FUNC8("%s: tx: DMA %d in progress\n", dev->name, adapter->current_dma.direction);

	adapter->current_dma.direction = 1;
	adapter->current_dma.start_time = jiffies;

	if ((unsigned long)(skb->data + nlen) >= MAX_DMA_ADDRESS || nlen != skb->len) {
		FUNC14(skb, adapter->dma_buffer, nlen);
		FUNC5(adapter->dma_buffer+skb->len, 0, nlen-skb->len);
		target = FUNC4(adapter->dma_buffer);
	}
	else {
		target = FUNC4(skb->data);
	}
	adapter->current_dma.skb = skb;

	flags=FUNC0();
	FUNC2(dev->dma);
	FUNC1(dev->dma);
	FUNC13(dev->dma, 0x48);	/* dma memory -> io */
	FUNC11(dev->dma, target);
	FUNC12(dev->dma, nlen);
	FUNC7(adapter->hcr_val | DMAE | TCEN, dev);
	FUNC3(dev->dma);
	FUNC9(flags);

	if (elp_debug >= 3)
		FUNC8("%s: DMA transfer started\n", dev->name);

	return true;
}