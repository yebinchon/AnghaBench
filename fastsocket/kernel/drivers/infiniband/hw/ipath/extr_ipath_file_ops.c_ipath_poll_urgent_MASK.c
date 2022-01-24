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
struct poll_table_struct {int dummy; } ;
struct ipath_portdata {scalar_t__ port_urgent; scalar_t__ port_urgent_poll; int /*<<< orphan*/  port_wait; int /*<<< orphan*/  port_flag; struct ipath_devdata* port_dd; } ;
struct ipath_devdata {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPATH_PORT_WAITING_URG ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 unsigned int FUNC0 (struct ipath_portdata*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static unsigned int FUNC5(struct ipath_portdata *pd,
				      struct file *fp,
				      struct poll_table_struct *pt)
{
	unsigned pollflag = 0;
	struct ipath_devdata *dd;

	dd = pd->port_dd;

	/* variable access in ipath_poll_hdrqfull() needs this */
	FUNC2();
	pollflag = FUNC0(pd);

	if (pd->port_urgent != pd->port_urgent_poll) {
		pollflag |= POLLIN | POLLRDNORM;
		pd->port_urgent_poll = pd->port_urgent;
	}

	if (!pollflag) {
		/* this saves a spin_lock/unlock in interrupt handler... */
		FUNC3(IPATH_PORT_WAITING_URG, &pd->port_flag);
		/* flush waiting flag so don't miss an event... */
		FUNC4();
		FUNC1(fp, &pd->port_wait, pt);
	}

	return pollflag;
}