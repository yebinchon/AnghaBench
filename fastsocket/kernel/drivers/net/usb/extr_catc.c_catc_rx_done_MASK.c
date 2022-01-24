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
typedef  int /*<<< orphan*/  u8 ;
struct urb {int status; int actual_length; int /*<<< orphan*/  dev; int /*<<< orphan*/ * transfer_buffer; struct catc* context; } ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct catc {int /*<<< orphan*/  flags; int /*<<< orphan*/  usbdev; int /*<<< orphan*/  recq_sz; scalar_t__ is_f5u011; TYPE_2__* netdev; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_3__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  RX_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct sk_buff* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 int FUNC10 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct urb *urb)
{
	struct catc *catc = urb->context;
	u8 *pkt_start = urb->transfer_buffer;
	struct sk_buff *skb;
	int pkt_len, pkt_offset = 0;
	int status = urb->status;

	if (!catc->is_f5u011) {
		FUNC2(RX_RUNNING, &catc->flags);
		pkt_offset = 2;
	}

	if (status) {
		FUNC3("rx_done, status %d, length %d", status, urb->actual_length);
		return;
	}

	do {
		if(!catc->is_f5u011) {
			pkt_len = FUNC6((__le16*)pkt_start);
			if (pkt_len > urb->actual_length) {
				catc->netdev->stats.rx_length_errors++;
				catc->netdev->stats.rx_errors++;
				break;
			}
		} else {
			pkt_len = urb->actual_length;
		}

		if (!(skb = FUNC4(pkt_len)))
			return;

		FUNC8(skb, pkt_start + pkt_offset, pkt_len);
		FUNC9(skb, pkt_len);

		skb->protocol = FUNC5(skb, catc->netdev);
		FUNC7(skb);

		catc->netdev->stats.rx_packets++;
		catc->netdev->stats.rx_bytes += pkt_len;

		/* F5U011 only does one packet per RX */
		if (catc->is_f5u011)
			break;
		pkt_start += (((pkt_len + 1) >> 6) + 1) << 6;

	} while (pkt_start - (u8 *) urb->transfer_buffer < urb->actual_length);

	if (catc->is_f5u011) {
		if (FUNC1(&catc->recq_sz)) {
			int state;
			FUNC0(&catc->recq_sz);
			FUNC3("getting extra packet");
			urb->dev = catc->usbdev;
			if ((state = FUNC10(urb, GFP_ATOMIC)) < 0) {
				FUNC3("submit(rx_urb) status %d", state);
			}
		} else {
			FUNC2(RX_RUNNING, &catc->flags);
		}
	}
}