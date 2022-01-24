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
struct phantom_device {int status; int /*<<< orphan*/  counter; int /*<<< orphan*/  wait; } ;
struct file {struct phantom_device* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int PHB_RUNNING ; 
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,...) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file, poll_table *wait)
{
	struct phantom_device *dev = file->private_data;
	unsigned int mask = 0;

	FUNC2("phantom_poll: %d\n", FUNC0(&dev->counter));
	FUNC1(file, &dev->wait, wait);

	if (!(dev->status & PHB_RUNNING))
		mask = POLLERR;
	else if (FUNC0(&dev->counter))
		mask = POLLIN | POLLRDNORM;

	FUNC2("phantom_poll end: %x/%d\n", mask, FUNC0(&dev->counter));

	return mask;
}