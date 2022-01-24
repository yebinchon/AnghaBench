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
struct port {int /*<<< orphan*/  host_connected; int /*<<< orphan*/  guest_connected; int /*<<< orphan*/  waitqueue; } ;
struct file {struct port* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct port*) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *filp, poll_table *wait)
{
	struct port *port;
	unsigned int ret;

	port = filp->private_data;
	FUNC0(filp, &port->waitqueue, wait);

	if (!port->guest_connected) {
		/* Port got unplugged */
		return POLLHUP;
	}
	ret = 0;
	if (!FUNC1(port))
		ret |= POLLIN | POLLRDNORM;
	if (!FUNC2(port))
		ret |= POLLOUT;
	if (!port->host_connected)
		ret |= POLLHUP;

	return ret;
}