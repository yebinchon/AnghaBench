#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct tty_struct {int dummy; } ;
struct rfkill {int dummy; } ;
struct hso_serial {TYPE_1__* parent; int /*<<< orphan*/  serial_lock; int /*<<< orphan*/  tty; } ;
struct TYPE_12__ {int /*<<< orphan*/  net; struct rfkill* rfkill; } ;
struct TYPE_11__ {int /*<<< orphan*/  async_get_intf; int /*<<< orphan*/  async_put_intf; struct usb_interface* interface; } ;
struct TYPE_10__ {int /*<<< orphan*/  ref; struct usb_interface* interface; } ;
struct TYPE_9__ {int usb_gone; int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int HSO_MAX_NET_DEVICES ; 
 int HSO_SERIAL_TTY_MINORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC1 (TYPE_3__*) ; 
 struct hso_serial* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  hso_serial_ref_free ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_3__** network_table ; 
 int /*<<< orphan*/  FUNC9 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC10 (struct rfkill*) ; 
 TYPE_2__** serial_table ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tty_struct*) ; 
 struct tty_struct* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 

__attribute__((used)) static void FUNC16(struct usb_interface *interface)
{
	struct hso_serial *hso_dev;
	struct tty_struct *tty;
	int i;

	for (i = 0; i < HSO_SERIAL_TTY_MINORS; i++) {
		if (serial_table[i]
		    && (serial_table[i]->interface == interface)) {
			hso_dev = FUNC2(serial_table[i]);
			FUNC11(&hso_dev->serial_lock);
			tty = FUNC14(hso_dev->tty);
			FUNC12(&hso_dev->serial_lock);
			if (tty)
				FUNC13(tty);
			FUNC6(&hso_dev->parent->mutex);
			FUNC15(tty);
			hso_dev->parent->usb_gone = 1;
			FUNC7(&hso_dev->parent->mutex);
			FUNC5(&serial_table[i]->ref, hso_serial_ref_free);
		}
	}

	for (i = 0; i < HSO_MAX_NET_DEVICES; i++) {
		if (network_table[i]
		    && (network_table[i]->interface == interface)) {
			struct rfkill *rfk = FUNC1(network_table[i])->rfkill;
			/* hso_stop_net_device doesn't stop the net queue since
			 * traffic needs to start it again when suspended */
			FUNC8(FUNC1(network_table[i])->net);
			FUNC4(network_table[i]);
			FUNC0(&network_table[i]->async_put_intf);
			FUNC0(&network_table[i]->async_get_intf);
			if (rfk) {
				FUNC10(rfk);
				FUNC9(rfk);
			}
			FUNC3(network_table[i]);
		}
	}
}