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
struct file_info {int /*<<< orphan*/  reqlists_lock; int /*<<< orphan*/  req_complete; int /*<<< orphan*/  wait_complete; } ;
struct file {struct file_info* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table * pt)
{
	struct file_info *fi = file->private_data;
	unsigned int mask = POLLOUT | POLLWRNORM;
	unsigned long flags;

	FUNC1(file, &fi->wait_complete, pt);

	FUNC2(&fi->reqlists_lock, flags);
	if (!FUNC0(&fi->req_complete)) {
		mask |= POLLIN | POLLRDNORM;
	}
	FUNC3(&fi->reqlists_lock, flags);

	return mask;
}