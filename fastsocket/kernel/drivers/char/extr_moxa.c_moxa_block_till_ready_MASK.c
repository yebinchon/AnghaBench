#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u8 ;
struct tty_struct {int dummy; } ;
struct tty_port {int /*<<< orphan*/  open_wait; } ;
struct moxa_port {struct tty_port port; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct file*) ; 
 scalar_t__ FUNC6 (struct tty_port*) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC7(struct tty_struct *tty, struct file *filp,
			    struct moxa_port *ch)
{
	struct tty_port *port = &ch->port;
	FUNC0(wait);
	int retval = 0;
	u8 dcd;

	while (1) {
		FUNC2(&port->open_wait, &wait, TASK_INTERRUPTIBLE);
		if (FUNC5(filp)) {
#ifdef SERIAL_DO_RESTART
			retval = -ERESTARTSYS;
#else
			retval = -EAGAIN;
#endif
			break;
		}
		dcd = FUNC6(port);
		if (dcd)
			break;

		if (FUNC4(current)) {
			retval = -ERESTARTSYS;
			break;
		}
		FUNC3();
	}
	FUNC1(&port->open_wait, &wait);

	return retval;
}