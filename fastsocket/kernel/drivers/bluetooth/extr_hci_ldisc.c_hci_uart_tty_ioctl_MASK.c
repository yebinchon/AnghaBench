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
struct tty_struct {scalar_t__ disc_data; } ;
struct hci_uart {TYPE_2__* hdev; int /*<<< orphan*/  flags; TYPE_1__* proto; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBADF ; 
 int EBUSY ; 
 int EUNATCH ; 
#define  HCIUARTGETDEVICE 130 
#define  HCIUARTGETPROTO 129 
#define  HCIUARTSETPROTO 128 
 int /*<<< orphan*/  HCI_UART_PROTO_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct hci_uart*,unsigned long) ; 
 int FUNC3 (struct tty_struct*,struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty, struct file * file,
					unsigned int cmd, unsigned long arg)
{
	struct hci_uart *hu = (void *)tty->disc_data;
	int err = 0;

	FUNC0("");

	/* Verify the status of the device */
	if (!hu)
		return -EBADF;

	switch (cmd) {
	case HCIUARTSETPROTO:
		if (!FUNC4(HCI_UART_PROTO_SET, &hu->flags)) {
			err = FUNC2(hu, arg);
			if (err) {
				FUNC1(HCI_UART_PROTO_SET, &hu->flags);
				return err;
			}
		} else
			return -EBUSY;
		break;

	case HCIUARTGETPROTO:
		if (FUNC5(HCI_UART_PROTO_SET, &hu->flags))
			return hu->proto->id;
		return -EUNATCH;

	case HCIUARTGETDEVICE:
		if (FUNC5(HCI_UART_PROTO_SET, &hu->flags))
			return hu->hdev->id;
		return -EUNATCH;

	default:
		err = FUNC3(tty, file, cmd, arg);
		break;
	};

	return err;
}