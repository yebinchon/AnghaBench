#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct tty_struct {scalar_t__ disc_data; } ;
struct hci_uart {int /*<<< orphan*/  rx_lock; TYPE_3__* hdev; TYPE_1__* proto; int /*<<< orphan*/  flags; struct tty_struct* tty; } ;
struct TYPE_5__ {int byte_rx; } ;
struct TYPE_6__ {TYPE_2__ stat; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* recv ) (struct hci_uart*,void*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCI_UART_PROTO_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_uart*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC5(struct tty_struct *tty, const u8 *data, char *flags, int count)
{
	struct hci_uart *hu = (void *)tty->disc_data;

	if (!hu || tty != hu->tty)
		return;

	if (!FUNC3(HCI_UART_PROTO_SET, &hu->flags))
		return;

	FUNC0(&hu->rx_lock);
	hu->proto->recv(hu, (void *) data, count);
	hu->hdev->stat.byte_rx += count;
	FUNC1(&hu->rx_lock);

	FUNC4(tty);
}