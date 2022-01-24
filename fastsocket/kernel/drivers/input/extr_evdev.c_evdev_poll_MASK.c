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
struct file {struct evdev_client* private_data; } ;
struct evdev_client {scalar_t__ head; scalar_t__ tail; struct evdev* evdev; } ;
struct evdev {scalar_t__ exist; int /*<<< orphan*/  wait; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC1(struct file *file, poll_table *wait)
{
	struct evdev_client *client = file->private_data;
	struct evdev *evdev = client->evdev;

	FUNC0(file, &evdev->wait, wait);
	return ((client->head == client->tail) ? 0 : (POLLIN | POLLRDNORM)) |
		(evdev->exist ? 0 : (POLLHUP | POLLERR));
}