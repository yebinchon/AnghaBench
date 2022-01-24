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
struct sk_buff {TYPE_2__* dev; int /*<<< orphan*/  protocol; } ;
struct mcs_cb {TYPE_2__* netdev; } ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_3__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IRDA ; 
 int /*<<< orphan*/  GOOD_FCS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(struct mcs_cb *mcs, __u8 *buf, int len)
{
	__u16 fcs;
	int new_len;
	struct sk_buff *skb;

	/* Assume that the frames are going to fill a single packet
	 * rather than span multiple packets.
	 */

	new_len = len - 2;
	if(FUNC9(new_len <= 0)) {
		FUNC0("%s short frame length %d\n",
			     mcs->netdev->name, new_len);
		++mcs->netdev->stats.rx_errors;
		++mcs->netdev->stats.rx_length_errors;
		return;
	}
	fcs = 0;
	fcs = FUNC3(~fcs, buf, len);

	if(fcs != GOOD_FCS) {
		FUNC0("crc error calc 0x%x len %d\n",
			   fcs, new_len);
		mcs->netdev->stats.rx_errors++;
		mcs->netdev->stats.rx_crc_errors++;
		return;
	}

	skb = FUNC1(new_len + 1);
	if(FUNC9(!skb)) {
		++mcs->netdev->stats.rx_dropped;
		return;
	}

	FUNC7(skb, 1);
	FUNC5(skb, buf, new_len);
	FUNC6(skb, new_len);
	FUNC8(skb);
	skb->protocol = FUNC2(ETH_P_IRDA);
	skb->dev = mcs->netdev;

	FUNC4(skb);

	mcs->netdev->stats.rx_packets++;
	mcs->netdev->stats.rx_bytes += new_len;

	return;
}