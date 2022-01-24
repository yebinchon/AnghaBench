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
struct inode {int dummy; } ;
struct gpio_private {int highalarm; int lowalarm; struct gpio_private* next; } ;
struct file {struct gpio_private* private_data; } ;

/* Variables and functions */
 struct gpio_private* alarmlist ; 
 int /*<<< orphan*/  gpio_lock ; 
 int gpio_some_alarms ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int
FUNC3(struct inode *inode, struct file *filp)
{
	struct gpio_private *p;
	struct gpio_private *todel;
	unsigned long flags;

	FUNC1(&gpio_lock, flags);

	p = alarmlist;
	todel = filp->private_data;

	/* unlink from alarmlist and free the private structure */

	if (p == todel) {
		alarmlist = todel->next;
	} else {
		while (p->next != todel)
			p = p->next;
		p->next = todel->next;
	}

	FUNC0(todel);
	/* Check if there are still any alarms set */
	p = alarmlist;
	while (p) {
		if (p->highalarm | p->lowalarm) {
			gpio_some_alarms = 1;
			goto out;
		}
		p = p->next;
	}
	gpio_some_alarms = 0;
out:
	FUNC2(&gpio_lock, flags);
	return 0;
}