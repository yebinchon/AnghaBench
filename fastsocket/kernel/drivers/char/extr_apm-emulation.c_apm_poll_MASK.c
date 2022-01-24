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
struct file {struct apm_user* private_data; } ;
struct apm_user {int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  apm_waitqueue ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *fp, poll_table * wait)
{
	struct apm_user *as = fp->private_data;

	FUNC0(fp, &apm_waitqueue, wait);
	return FUNC1(&as->queue) ? 0 : POLLIN | POLLRDNORM;
}