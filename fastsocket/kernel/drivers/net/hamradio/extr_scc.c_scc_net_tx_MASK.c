#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int len; int* data; } ;
struct TYPE_8__ {scalar_t__ fulldup; int /*<<< orphan*/  waittime; } ;
struct TYPE_7__ {int bufsize; scalar_t__ tx_state; int /*<<< orphan*/  txframes; } ;
struct TYPE_5__ {int tx_bytes; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_dropped; } ;
struct scc_channel {int /*<<< orphan*/  lock; TYPE_4__ kiss; TYPE_3__ stat; int /*<<< orphan*/  tx_queue; TYPE_2__* dev; TYPE_1__ dev_stat; } ;
struct net_device {int /*<<< orphan*/  trans_start; scalar_t__ ml_priv; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_6__ {scalar_t__ tx_queue_len; } ;

/* Variables and functions */
 scalar_t__ KISS_DUPLEX_HALF ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ TXS_BUSY ; 
 scalar_t__ TXS_IDLE ; 
 scalar_t__ TXS_IDLE2 ; 
 int /*<<< orphan*/  FUNC0 (struct scc_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct scc_channel*,char,int) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  t_dwait ; 

__attribute__((used)) static netdev_tx_t FUNC9(struct sk_buff *skb, struct net_device *dev)
{
	struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;
	unsigned long flags;
	char kisscmd;

	if (skb->len > scc->stat.bufsize || skb->len < 2) {
		scc->dev_stat.tx_dropped++;	/* bogus frame */
		FUNC1(skb);
		return NETDEV_TX_OK;
	}
	
	scc->dev_stat.tx_packets++;
	scc->dev_stat.tx_bytes += skb->len;
	scc->stat.txframes++;
	
	kisscmd = *skb->data & 0x1f;
	FUNC4(skb, 1);

	if (kisscmd) {
		FUNC2(scc, kisscmd, *skb->data);
		FUNC1(skb);
		return NETDEV_TX_OK;
	}

	FUNC7(&scc->lock, flags);
		
	if (FUNC5(&scc->tx_queue) > scc->dev->tx_queue_len) {
		struct sk_buff *skb_del;
		skb_del = FUNC3(&scc->tx_queue);
		FUNC1(skb_del);
	}
	FUNC6(&scc->tx_queue, skb);
	dev->trans_start = jiffies;
	

	/*
	 * Start transmission if the trx state is idle or
	 * t_idle hasn't expired yet. Use dwait/persistence/slottime
	 * algorithm for normal halfduplex operation.
	 */

	if(scc->stat.tx_state == TXS_IDLE || scc->stat.tx_state == TXS_IDLE2) {
		scc->stat.tx_state = TXS_BUSY;
		if (scc->kiss.fulldup == KISS_DUPLEX_HALF)
			FUNC0(scc, t_dwait, scc->kiss.waittime);
		else
			FUNC0(scc, t_dwait, 0);
	}
	FUNC8(&scc->lock, flags);
	return NETDEV_TX_OK;
}