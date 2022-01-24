#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uart_icount {scalar_t__ rng; scalar_t__ dsr; scalar_t__ dcd; } ;
struct hso_tiocmget {int /*<<< orphan*/  waitq; int /*<<< orphan*/  icount; } ;
struct hso_serial {int /*<<< orphan*/  serial_lock; struct hso_tiocmget* tiocmget; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int ENOENT ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 unsigned long TIOCM_CD ; 
 unsigned long TIOCM_DSR ; 
 unsigned long TIOCM_RNG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct uart_icount*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int
FUNC9(struct hso_serial *serial, unsigned long arg)
{
	FUNC0(wait, current);
	struct uart_icount cprev, cnow;
	struct hso_tiocmget  *tiocmget;
	int ret;

	tiocmget = serial->tiocmget;
	if (!tiocmget)
		return -ENOENT;
	/*
	 * note the counters on entry
	 */
	FUNC7(&serial->serial_lock);
	FUNC2(&cprev, &tiocmget->icount, sizeof(struct uart_icount));
	FUNC8(&serial->serial_lock);
	FUNC1(&tiocmget->waitq, &wait);
	for (;;) {
		FUNC7(&serial->serial_lock);
		FUNC2(&cnow, &tiocmget->icount, sizeof(struct uart_icount));
		FUNC8(&serial->serial_lock);
		FUNC5(TASK_INTERRUPTIBLE);
		if (((arg & TIOCM_RNG) && (cnow.rng != cprev.rng)) ||
		    ((arg & TIOCM_DSR) && (cnow.dsr != cprev.dsr)) ||
		    ((arg & TIOCM_CD)  && (cnow.dcd != cprev.dcd))) {
			ret = 0;
			break;
		}
		FUNC4();
		/* see if a signal did it */
		if (FUNC6(current)) {
			ret = -ERESTARTSYS;
			break;
		}
		cprev = cnow;
	}
	current->state = TASK_RUNNING;
	FUNC3(&tiocmget->waitq, &wait);

	return ret;
}