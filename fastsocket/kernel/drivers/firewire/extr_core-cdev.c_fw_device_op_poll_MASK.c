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
struct file {struct client* private_data; } ;
struct client {int /*<<< orphan*/  event_list; int /*<<< orphan*/  device; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file, poll_table * pt)
{
	struct client *client = file->private_data;
	unsigned int mask = 0;

	FUNC2(file, &client->wait, pt);

	if (FUNC0(client->device))
		mask |= POLLHUP | POLLERR;
	if (!FUNC1(&client->event_list))
		mask |= POLLIN | POLLRDNORM;

	return mask;
}