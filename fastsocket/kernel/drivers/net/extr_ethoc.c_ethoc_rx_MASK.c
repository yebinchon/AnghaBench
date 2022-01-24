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
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct net_device {int /*<<< orphan*/  dev; } ;
struct ethoc_bd {int stat; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; } ;
struct ethoc {unsigned int num_tx; unsigned int cur_rx; unsigned int num_rx; TYPE_1__ stats; } ;

/* Variables and functions */
 int RX_BD_EMPTY ; 
 int RX_BD_STATS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 scalar_t__ FUNC3 (struct ethoc*,struct ethoc_bd*) ; 
 int /*<<< orphan*/  FUNC4 (struct ethoc*,unsigned int,struct ethoc_bd*) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC7 () ; 
 struct sk_buff* FUNC8 (struct net_device*,int) ; 
 struct ethoc* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC14(struct net_device *dev, int limit)
{
	struct ethoc *priv = FUNC9(dev);
	int count;

	for (count = 0; count < limit; ++count) {
		unsigned int entry;
		struct ethoc_bd bd;

		entry = priv->num_tx + (priv->cur_rx % priv->num_rx);
		FUNC2(priv, entry, &bd);
		if (bd.stat & RX_BD_EMPTY)
			break;

		if (FUNC3(priv, &bd) == 0) {
			int size = bd.stat >> 16;
			struct sk_buff *skb = FUNC8(dev, size);

			size -= 4; /* strip the CRC */
			FUNC13(skb, 2); /* align TCP/IP header */

			if (FUNC5(skb)) {
				void *src = FUNC11(bd.addr);
				FUNC6(FUNC12(skb, size), src, size);
				skb->protocol = FUNC1(skb, dev);
				priv->stats.rx_packets++;
				priv->stats.rx_bytes += size;
				FUNC10(skb);
			} else {
				if (FUNC7())
					FUNC0(&dev->dev, "low on memory - "
							"packet dropped\n");

				priv->stats.rx_dropped++;
				break;
			}
		}

		/* clear the buffer descriptor so it can be reused */
		bd.stat &= ~RX_BD_STATS;
		bd.stat |=  RX_BD_EMPTY;
		FUNC4(priv, entry, &bd);
		priv->cur_rx++;
	}

	return count;
}