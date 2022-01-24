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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {TYPE_1__* rx_skb; int /*<<< orphan*/  unrel; } ;
struct TYPE_4__ {int /*<<< orphan*/  pkt_type; } ;
struct TYPE_3__ {int* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCSP_LE_PKT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct hci_uart *hu)
{
	struct bcsp_struct *bcsp = hu->priv;
	u8 conf_pkt[4]     = { 0xad, 0xef, 0xac, 0xed };
	u8 conf_rsp_pkt[4] = { 0xde, 0xad, 0xd0, 0xd0 };
	u8 sync_pkt[4]     = { 0xda, 0xdc, 0xed, 0xed };

	/* spot "conf" pkts and reply with a "conf rsp" pkt */
	if (bcsp->rx_skb->data[1] >> 4 == 4 && bcsp->rx_skb->data[2] == 0 &&
			!FUNC5(&bcsp->rx_skb->data[4], conf_pkt, 4)) {
		struct sk_buff *nskb = FUNC2(4, GFP_ATOMIC);

		FUNC0("Found a LE conf pkt");
		if (!nskb)
			return;
		FUNC6(FUNC7(nskb, 4), conf_rsp_pkt, 4);
		FUNC3(nskb)->pkt_type = BCSP_LE_PKT;

		FUNC8(&bcsp->unrel, nskb);
		FUNC4(hu);
	}
	/* Spot "sync" pkts. If we find one...disaster! */
	else if (bcsp->rx_skb->data[1] >> 4 == 4 && bcsp->rx_skb->data[2] == 0 &&
			!FUNC5(&bcsp->rx_skb->data[4], sync_pkt, 4)) {
		FUNC1("Found a LE sync pkt, card has reset");
	}
}