#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {int len; int /*<<< orphan*/  data; } ;
struct asix_rx_fixup_info {int size; int split_head; int header; int /*<<< orphan*/ * ax_skb; } ;
struct TYPE_3__ {int mtu; } ;

/* Variables and functions */
 int ETH_HLEN ; 
 int VLAN_HLEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int,...) ; 
 unsigned char* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usbnet*,int /*<<< orphan*/ *) ; 

int FUNC8(struct usbnet *dev, struct sk_buff *skb,
			   struct asix_rx_fixup_info *rx)
{
	int offset = 0;

	while (offset + sizeof(u16) <= skb->len) {
		u16 remaining = 0;
		unsigned char *data;

		if (!rx->size) {
			if ((skb->len - offset == sizeof(u16)) ||
			    rx->split_head) {
				if(!rx->split_head) {
					rx->header = FUNC0(
							skb->data + offset);
					rx->split_head = true;
					offset += sizeof(u16);
					break;
				} else {
					rx->header |= (FUNC0(
							skb->data + offset)
							<< 16);
					rx->split_head = false;
					offset += sizeof(u16);
				}
			} else {
				rx->header = FUNC1(skb->data +
								offset);
				offset += sizeof(u32);
			}

			/* get the packet length */
			rx->size = (u16) (rx->header & 0x7ff);
			if (rx->size != ((~rx->header >> 16) & 0x7ff)) {
				FUNC5(dev->net, "asix_rx_fixup() Bad Header Length 0x%x, offset %d\n",
					   rx->header, offset);
				rx->size = 0;
				return 0;
			}
			rx->ax_skb = FUNC4(dev->net,
							       rx->size);
			if (!rx->ax_skb)
				return 0;
		}

		if (rx->size > dev->net->mtu + ETH_HLEN + VLAN_HLEN) {
			FUNC5(dev->net, "asix_rx_fixup() Bad RX Length %d\n",
				   rx->size);
			FUNC2(rx->ax_skb);
			rx->ax_skb = NULL;
			rx->size = 0U;

			return 0;
		}

		if (rx->size > skb->len - offset) {
			remaining = rx->size - (skb->len - offset);
			rx->size = skb->len - offset;
		}

		data = FUNC6(rx->ax_skb, rx->size);
		FUNC3(data, skb->data + offset, rx->size);
		if (!remaining)
			FUNC7(dev, rx->ax_skb);

		offset += (rx->size + 1) & 0xfffe;
		rx->size = remaining;
	}

	if (skb->len != offset) {
		FUNC5(dev->net, "asix_rx_fixup() Bad SKB Length %d, %d\n",
			   skb->len, offset);
		return 0;
	}

	return 1;
}