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
struct file {scalar_t__ private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  applid; } ;
struct capidev {int /*<<< orphan*/  recvqueue; int /*<<< orphan*/  recvwait; TYPE_1__ ap; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int
FUNC2(struct file *file, poll_table * wait)
{
	struct capidev *cdev = (struct capidev *)file->private_data;
	unsigned int mask = 0;

	if (!cdev->ap.applid)
		return POLLERR;

	FUNC0(file, &(cdev->recvwait), wait);
	mask = POLLOUT | POLLWRNORM;
	if (!FUNC1(&cdev->recvqueue))
		mask |= POLLIN | POLLRDNORM;
	return mask;
}