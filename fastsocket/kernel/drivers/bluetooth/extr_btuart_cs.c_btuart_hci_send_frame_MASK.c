#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; scalar_t__ driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  txq; } ;
typedef  TYPE_2__ btuart_info_t ;
struct TYPE_7__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 TYPE_4__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	btuart_info_t *info;
	struct hci_dev *hdev = (struct hci_dev *)(skb->dev);

	if (!hdev) {
		FUNC0("Frame for unknown HCI device (hdev=NULL)");
		return -ENODEV;
	}

	info = (btuart_info_t *)(hdev->driver_data);

	switch (FUNC1(skb)->pkt_type) {
	case HCI_COMMAND_PKT:
		hdev->stat.cmd_tx++;
		break;
	case HCI_ACLDATA_PKT:
		hdev->stat.acl_tx++;
		break;
	case HCI_SCODATA_PKT:
		hdev->stat.sco_tx++;
		break;
	};

	/* Prepend skb with frame type */
	FUNC3(FUNC4(skb, 1), &FUNC1(skb)->pkt_type, 1);
	FUNC5(&(info->txq), skb);

	FUNC2(info);

	return 0;
}