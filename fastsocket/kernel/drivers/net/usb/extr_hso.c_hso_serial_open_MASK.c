#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int low_latency; struct hso_serial* driver_data; int /*<<< orphan*/  index; } ;
struct hso_serial {scalar_t__ magic; int open_count; TYPE_1__* parent; int /*<<< orphan*/  retry_unthrottle_workqueue; int /*<<< orphan*/  unthrottle_tasklet; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  serial_lock; int /*<<< orphan*/  tty; int /*<<< orphan*/  minor; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  interface; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ HSO_SERIAL_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RX_IDLE ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty_struct*,int /*<<< orphan*/ *) ; 
 struct hso_serial* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hso_serial_ref_free ; 
 int /*<<< orphan*/  FUNC5 (struct tty_struct*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ hso_unthrottle_tasklet ; 
 int /*<<< orphan*/  hso_unthrottle_workfunc ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,void (*) (unsigned long),unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (struct tty_struct*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct tty_struct *tty, struct file *filp)
{
	struct hso_serial *serial = FUNC4(tty->index);
	int result;

	/* sanity check */
	if (serial == NULL || serial->magic != HSO_SERIAL_MAGIC) {
		FUNC2(1);
		tty->driver_data = NULL;
		FUNC0("Failed to open port");
		return -ENODEV;
	}

	FUNC10(&serial->parent->mutex);
	result = FUNC17(serial->parent->interface);
	if (result < 0)
		goto err_out;

	FUNC0("Opening %d", serial->minor);
	FUNC8(&serial->parent->ref);

	/* setup */
	FUNC12(&serial->serial_lock);
	tty->driver_data = serial;
	FUNC16(serial->tty);
	serial->tty = FUNC15(tty);
	FUNC13(&serial->serial_lock);

	/* check for port already opened, if not set the termios */
	serial->open_count++;
	if (serial->open_count == 1) {
		tty->low_latency = 1;
		serial->rx_state = RX_IDLE;
		/* Force default termio settings */
		FUNC3(tty, NULL);
		FUNC14(&serial->unthrottle_tasklet,
			     (void (*)(unsigned long))hso_unthrottle_tasklet,
			     (unsigned long)serial);
		FUNC1(&serial->retry_unthrottle_workqueue,
			  hso_unthrottle_workfunc);
		result = FUNC6(serial->parent, GFP_KERNEL);
		if (result) {
			FUNC7(serial->parent);
			serial->open_count--;
			FUNC9(&serial->parent->ref, hso_serial_ref_free);
		}
	} else {
		FUNC0("Port was already open");
	}

	FUNC18(serial->parent->interface);

	/* done */
	if (result)
		FUNC5(tty, NULL, TIOCM_RTS | TIOCM_DTR, 0);
err_out:
	FUNC11(&serial->parent->mutex);
	return result;
}