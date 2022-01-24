#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct usbnet {TYPE_2__* net; scalar_t__* data; } ;
struct smsc95xx_priv {scalar_t__ use_rx_csum; } ;
struct sk_buff {scalar_t__ len; unsigned char* data; int truesize; } ;
typedef  int /*<<< orphan*/  header ;
struct TYPE_3__ {int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int ETH_FRAME_LEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NET_IP_ALIGN ; 
 int RX_STS_CRC_ ; 
 int RX_STS_ES_ ; 
 int RX_STS_FL_ ; 
 int RX_STS_FT_ ; 
 int RX_STS_LE_ ; 
 int RX_STS_RF_ ; 
 int RX_STS_TL_ ; 
 int /*<<< orphan*/  FUNC0 (struct usbnet*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,unsigned char*,int) ; 
 scalar_t__ FUNC4 (struct usbnet*) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct usbnet*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct usbnet *dev, struct sk_buff *skb)
{
	struct smsc95xx_priv *pdata = (struct smsc95xx_priv *)(dev->data[0]);

	while (skb->len > 0) {
		u32 header, align_count;
		struct sk_buff *ax_skb;
		unsigned char *packet;
		u16 size;

		FUNC3(&header, skb->data, sizeof(header));
		FUNC2(&header);
		FUNC6(skb, 4 + NET_IP_ALIGN);
		packet = skb->data;

		/* get the packet length */
		size = (u16)((header & RX_STS_FL_) >> 16);
		align_count = (4 - ((size + NET_IP_ALIGN) % 4)) % 4;

		if (FUNC10(header & RX_STS_ES_)) {
			if (FUNC4(dev))
				FUNC0(dev, "Error header=0x%08x", header);
			dev->net->stats.rx_errors++;
			dev->net->stats.rx_dropped++;

			if (header & RX_STS_CRC_) {
				dev->net->stats.rx_crc_errors++;
			} else {
				if (header & (RX_STS_TL_ | RX_STS_RF_))
					dev->net->stats.rx_frame_errors++;

				if ((header & RX_STS_LE_) &&
					(!(header & RX_STS_FT_)))
					dev->net->stats.rx_length_errors++;
			}
		} else {
			/* ETH_FRAME_LEN + 4(CRC) + 2(COE) + 4(Vlan) */
			if (FUNC10(size > (ETH_FRAME_LEN + 12))) {
				if (FUNC4(dev))
					FUNC0(dev, "size err header=0x%08x",
						header);
				return 0;
			}

			/* last frame in this batch */
			if (skb->len == size) {
				if (pdata->use_rx_csum)
					FUNC9(skb);
				FUNC8(skb, skb->len - 4); /* remove fcs */
				skb->truesize = size + sizeof(struct sk_buff);

				return 1;
			}

			ax_skb = FUNC5(skb, GFP_ATOMIC);
			if (FUNC10(!ax_skb)) {
				FUNC1(dev, "Error allocating skb");
				return 0;
			}

			ax_skb->len = size;
			ax_skb->data = packet;
			FUNC7(ax_skb, size);

			if (pdata->use_rx_csum)
				FUNC9(ax_skb);
			FUNC8(ax_skb, ax_skb->len - 4); /* remove fcs */
			ax_skb->truesize = size + sizeof(struct sk_buff);

			FUNC11(dev, ax_skb);
		}

		FUNC6(skb, size);

		/* padding bytes before the next frame starts */
		if (skb->len)
			FUNC6(skb, align_count);
	}

	if (FUNC10(skb->len < 0)) {
		FUNC1(dev, "invalid rx length<0 %d", skb->len);
		return 0;
	}

	return 1;
}