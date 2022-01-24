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
struct stk_camera {int /*<<< orphan*/  sio_full; int /*<<< orphan*/  wait_frame; } ;
struct file {struct stk_camera* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct stk_camera*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *fp, poll_table *wait)
{
	struct stk_camera *dev = fp->private_data;

	FUNC2(fp, &dev->wait_frame, wait);

	if (!FUNC0(dev))
		return POLLERR;

	if (!FUNC1(&dev->sio_full))
		return (POLLIN | POLLRDNORM);

	return 0;
}