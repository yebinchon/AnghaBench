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
struct tty_struct {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ dev; } ;
struct hci_uart {TYPE_1__* proto; struct tty_struct* tty; } ;
struct hci_dev {int /*<<< orphan*/  name; scalar_t__ driver_data; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  pkt_type; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* enqueue ) (struct hci_uart*,struct sk_buff*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EBUSY ; 
 int ENODEV ; 
 int /*<<< orphan*/  HCI_RUNNING ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_uart*) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_uart*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb)
{
	struct hci_dev* hdev = (struct hci_dev *) skb->dev;
	struct tty_struct *tty;
	struct hci_uart *hu;

	if (!hdev) {
		FUNC1("Frame for uknown device (hdev=NULL)");
		return -ENODEV;
	}

	if (!FUNC5(HCI_RUNNING, &hdev->flags))
		return -EBUSY;

	hu = (struct hci_uart *) hdev->driver_data;
	tty = hu->tty;

	FUNC0("%s: type %d len %d", hdev->name, FUNC2(skb)->pkt_type, skb->len);

	hu->proto->enqueue(hu, skb);

	FUNC3(hu);

	return 0;
}