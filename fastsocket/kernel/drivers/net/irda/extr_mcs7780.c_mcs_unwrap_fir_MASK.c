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
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_3__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IRDA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct mcs_cb *mcs, __u8 *buf, int len)
{
	__u32 fcs;
	int new_len;
	struct sk_buff *skb;

	/* Assume that the frames are going to fill a single packet
	 * rather than span multiple packets.  This is most likely a false
	 * assumption.
	 */

	new_len = len - 4;
	if(FUNC10(new_len <= 0)) {
		FUNC0("%s short frame length %d\n",
			   mcs->netdev->name, new_len);
		++mcs->netdev->stats.rx_errors;
		++mcs->netdev->stats.rx_length_errors;
		return;
	}

	fcs = ~(FUNC1(~0, buf, new_len));
	if(fcs != FUNC3(buf + new_len)) {
		FUNC0("crc error calc 0x%x len %d\n", fcs, new_len);
		mcs->netdev->stats.rx_errors++;
		mcs->netdev->stats.rx_crc_errors++;
		return;
	}

	skb = FUNC2(new_len + 1);
	if(FUNC10(!skb)) {
		++mcs->netdev->stats.rx_dropped;
		return;
	}

	FUNC8(skb, 1);
	FUNC6(skb, buf, new_len);
	FUNC7(skb, new_len);
	FUNC9(skb);
	skb->protocol = FUNC4(ETH_P_IRDA);
	skb->dev = mcs->netdev;

	FUNC5(skb);

	mcs->netdev->stats.rx_packets++;
	mcs->netdev->stats.rx_bytes += new_len;

	return;
}