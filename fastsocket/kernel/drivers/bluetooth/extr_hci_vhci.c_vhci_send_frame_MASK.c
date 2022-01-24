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
struct vhci_data {int /*<<< orphan*/  read_wait; int /*<<< orphan*/  readq; } ;
struct sk_buff {scalar_t__ dev; } ;
struct hci_dev {struct vhci_data* driver_data; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb)
{
	struct hci_dev* hdev = (struct hci_dev *) skb->dev;
	struct vhci_data *data;

	if (!hdev) {
		FUNC0("Frame for unknown HCI device (hdev=NULL)");
		return -ENODEV;
	}

	if (!FUNC5(HCI_RUNNING, &hdev->flags))
		return -EBUSY;

	data = hdev->driver_data;

	FUNC2(FUNC3(skb, 1), &FUNC1(skb)->pkt_type, 1);
	FUNC4(&data->readq, skb);

	FUNC6(&data->read_wait);

	return 0;
}