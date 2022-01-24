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
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  sco_tx; int /*<<< orphan*/  acl_tx; int /*<<< orphan*/  cmd_tx; } ;
struct hci_dev {TYPE_1__ stat; int /*<<< orphan*/  flags; int /*<<< orphan*/  name; struct btsdio_data* driver_data; } ;
struct btsdio_data {int /*<<< orphan*/  work; int /*<<< orphan*/  txq; } ;
struct TYPE_4__ {int pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int EILSEQ ; 
#define  HCI_ACLDATA_PKT 130 
#define  HCI_COMMAND_PKT 129 
 int /*<<< orphan*/  HCI_RUNNING ; 
#define  HCI_SCODATA_PKT 128 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	struct hci_dev *hdev = (struct hci_dev *) skb->dev;
	struct btsdio_data *data = hdev->driver_data;

	FUNC0("%s", hdev->name);

	if (!FUNC4(HCI_RUNNING, &hdev->flags))
		return -EBUSY;

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

	default:
		return -EILSEQ;
	}

	FUNC3(&data->txq, skb);

	FUNC2(&data->work);

	return 0;
}