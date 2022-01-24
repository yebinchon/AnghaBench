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
struct hiddev_list {scalar_t__ head; scalar_t__ tail; TYPE_1__* hiddev; } ;
struct file {struct hiddev_list* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_2__ {int /*<<< orphan*/  exist; int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC1(struct file *file, poll_table *wait)
{
	struct hiddev_list *list = file->private_data;

	FUNC0(file, &list->hiddev->wait, wait);
	if (list->head != list->tail)
		return POLLIN | POLLRDNORM;
	if (!list->hiddev->exist)
		return POLLERR | POLLHUP;
	return 0;
}