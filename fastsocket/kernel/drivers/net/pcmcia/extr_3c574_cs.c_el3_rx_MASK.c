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
struct TYPE_2__ {short rx_bytes; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_errors; } ;
struct net_device {unsigned int base_addr; short name; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,short,short,...) ; 
 scalar_t__ EL3_STATUS ; 
 scalar_t__ RX_FIFO ; 
 int /*<<< orphan*/  RxDiscard ; 
 scalar_t__ RxStatus ; 
 struct sk_buff* FUNC1 (short) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,short) ; 
 short FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,short) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev, int worklimit)
{
	unsigned int ioaddr = dev->base_addr;
	short rx_status;
	
	FUNC0(3, "%s: in rx_packet(), status %4.4x, rx_status %4.4x.\n",
		  dev->name, FUNC4(ioaddr+EL3_STATUS), FUNC4(ioaddr+RxStatus));
	while (!((rx_status = FUNC4(ioaddr + RxStatus)) & 0x8000) &&
			worklimit > 0) {
		worklimit--;
		if (rx_status & 0x4000) { /* Error, update stats. */
			short error = rx_status & 0x3800;
			dev->stats.rx_errors++;
			switch (error) {
			case 0x0000:	dev->stats.rx_over_errors++; break;
			case 0x0800:	dev->stats.rx_length_errors++; break;
			case 0x1000:	dev->stats.rx_frame_errors++; break;
			case 0x1800:	dev->stats.rx_length_errors++; break;
			case 0x2000:	dev->stats.rx_frame_errors++; break;
			case 0x2800:	dev->stats.rx_crc_errors++; break;
			}
		} else {
			short pkt_len = rx_status & 0x7ff;
			struct sk_buff *skb;

			skb = FUNC1(pkt_len+5);

			FUNC0(3, "  Receiving packet size %d status %4.4x.\n",
				  pkt_len, rx_status);
			if (skb != NULL) {
				FUNC7(skb, 2);
				FUNC3(ioaddr+RX_FIFO, FUNC6(skb, pkt_len),
						((pkt_len+3)>>2));
				skb->protocol = FUNC2(skb, dev);
				FUNC5(skb);
				dev->stats.rx_packets++;
				dev->stats.rx_bytes += pkt_len;
			} else {
				FUNC0(1, "%s: couldn't allocate a sk_buff of"
					  " size %d.\n", dev->name, pkt_len);
				dev->stats.rx_dropped++;
			}
		}
		FUNC8(dev, RxDiscard);
	}

	return worklimit;
}