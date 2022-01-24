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
struct sk_buff {int len; } ;
struct hci_uart {struct bcsp_struct* priv; } ;
struct bcsp_struct {int /*<<< orphan*/  unrel; int /*<<< orphan*/  rel; } ;
struct TYPE_2__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC4(struct hci_uart *hu, struct sk_buff *skb)
{
	struct bcsp_struct *bcsp = hu->priv;

	if (skb->len > 0xFFF) {
		FUNC0("Packet too long");
		FUNC2(skb);
		return 0;
	}

	switch (FUNC1(skb)->pkt_type) {
	case HCI_ACLDATA_PKT:
	case HCI_COMMAND_PKT:
		FUNC3(&bcsp->rel, skb);
		break;

	case HCI_SCODATA_PKT:
		FUNC3(&bcsp->unrel, skb);
		break;

	default:
		FUNC0("Unknown packet type");
		FUNC2(skb);
		break;
	}

	return 0;
}