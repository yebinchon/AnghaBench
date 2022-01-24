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
typedef  int /*<<< orphan*/  u8 ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct hso_serial {scalar_t__ open_count; TYPE_1__* parent; int /*<<< orphan*/  retry_unthrottle_workqueue; int /*<<< orphan*/  unthrottle_tasklet; int /*<<< orphan*/  serial_lock; struct tty_struct* tty; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  mutex; int /*<<< orphan*/  interface; int /*<<< orphan*/  usb_gone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hso_serial_ref_free ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct tty_struct *tty, struct file *filp)
{
	struct hso_serial *serial = tty->driver_data;
	u8 usb_gone;

	FUNC0("Closing serial port");

	/* Open failed, no close cleanup required */
	if (serial == NULL)
		return;

	FUNC4(&serial->parent->mutex);
	usb_gone = serial->parent->usb_gone;

	if (!usb_gone)
		FUNC10(serial->parent->interface);

	/* reset the rts and dtr */
	/* do the actual close */
	serial->open_count--;

	if (serial->open_count <= 0) {
		serial->open_count = 0;
		FUNC6(&serial->serial_lock);
		if (serial->tty == tty) {
			serial->tty->driver_data = NULL;
			serial->tty = NULL;
			FUNC9(tty);
		}
		FUNC7(&serial->serial_lock);
		if (!usb_gone)
			FUNC2(serial->parent);
		FUNC8(&serial->unthrottle_tasklet);
		FUNC1(&serial->retry_unthrottle_workqueue);
	}

	if (!usb_gone)
		FUNC11(serial->parent->interface);

	FUNC5(&serial->parent->mutex);

	FUNC3(&serial->parent->ref, hso_serial_ref_free);
}