#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; scalar_t__ driver_data; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  txq; } ;
typedef  TYPE_2__ bt3c_info_t ;
struct TYPE_7__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODEV ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
#define  HCI_SCODATA_PKT 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_3__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb)
{
	bt3c_info_t *info;
	struct hci_dev *hdev = (struct hci_dev *)(skb->dev);
	unsigned long flags;

	if (!hdev) {
		FUNC0("Frame for unknown HCI device (hdev=NULL)");
		return -ENODEV;
	}

	info = (bt3c_info_t *) (hdev->driver_data);

	switch (FUNC2(skb)->pkt_type) {
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
	FUNC3(FUNC4(skb, 1), &FUNC2(skb)->pkt_type, 1);
	FUNC5(&(info->txq), skb);

	FUNC6(&(info->lock), flags);

	FUNC1(info);

	FUNC7(&(info->lock), flags);

	return 0;
}