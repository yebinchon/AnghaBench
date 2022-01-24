#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  data; int /*<<< orphan*/  pkt_type; scalar_t__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  flags; scalar_t__ driver_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  wait_q; } ;
struct btmrvl_private {TYPE_3__ main_thread; TYPE_2__* adapter; } ;
struct TYPE_8__ {int pkt_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EBUSY ; 
 int ENODEV ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
 int /*<<< orphan*/  HCI_RUNNING ; 
#define  HCI_SCODATA_PKT 128 
 TYPE_4__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct hci_dev *hdev = (struct hci_dev *) skb->dev;
	struct btmrvl_private *priv = NULL;

	FUNC0("type=%d, len=%d", skb->pkt_type, skb->len);

	if (!hdev || !hdev->driver_data) {
		FUNC1("Frame for unknown HCI device");
		return -ENODEV;
	}

	priv = (struct btmrvl_private *) hdev->driver_data;
	if (!FUNC5(HCI_RUNNING, &hdev->flags)) {
		FUNC1("Failed testing HCI_RUNING, flags=%lx", hdev->flags);
		FUNC3("data: ", DUMP_PREFIX_OFFSET,
							skb->data, skb->len);
		return -EBUSY;
	}

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
	}

	FUNC4(&priv->adapter->tx_queue, skb);

	FUNC6(&priv->main_thread.wait_q);

	return 0;
}