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
struct TYPE_2__ {int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; } ;
struct net_device {int name; TYPE_1__ stats; } ;
struct i596_rfd {int stat; int count; int cmd; int /*<<< orphan*/  data; } ;
struct i596_private {int dummy; } ;

/* Variables and functions */
 int CMD_EOL ; 
 int RFD_ALIGN_ERR ; 
 int RFD_COLLISION ; 
 int RFD_CRC_ERR ; 
 int RFD_DMA_ERR ; 
 int RFD_LENGTH_ERR ; 
 int RFD_NOBUFS_ERR ; 
 int RFD_SHORT_FRAME_ERR ; 
 int RFD_STAT_OK ; 
 struct sk_buff* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 

__attribute__((used)) static inline int
FUNC6(struct net_device *dev, struct i596_private *lp,
	    struct i596_rfd *rfd, int *frames) {

	if (rfd->stat & RFD_STAT_OK) {
		/* a good frame */
		int pkt_len = (rfd->count & 0x3fff);
		struct sk_buff *skb = FUNC0(pkt_len);

		(*frames)++;

		if (rfd->cmd & CMD_EOL)
			FUNC4("Received on EOL\n");

		if (skb == NULL) {
			FUNC4 ("%s: i596_rx Memory squeeze, "
				"dropping packet.\n", dev->name);
			dev->stats.rx_dropped++;
			return 1;
		}

		FUNC2(FUNC5(skb,pkt_len), rfd->data, pkt_len);

		skb->protocol = FUNC1(skb,dev);
		FUNC3(skb);
		dev->stats.rx_packets++;
	} else {
#if 0
		printk("Frame reception error status %04x\n",
		       rfd->stat);
#endif
		dev->stats.rx_errors++;
		if (rfd->stat & RFD_COLLISION)
			dev->stats.collisions++;
		if (rfd->stat & RFD_SHORT_FRAME_ERR)
			dev->stats.rx_length_errors++;
		if (rfd->stat & RFD_DMA_ERR)
			dev->stats.rx_over_errors++;
		if (rfd->stat & RFD_NOBUFS_ERR)
			dev->stats.rx_fifo_errors++;
		if (rfd->stat & RFD_ALIGN_ERR)
			dev->stats.rx_frame_errors++;
		if (rfd->stat & RFD_CRC_ERR)
			dev->stats.rx_crc_errors++;
		if (rfd->stat & RFD_LENGTH_ERR)
			dev->stats.rx_length_errors++;
	}
	rfd->stat = rfd->count = 0;
	return 0;
}