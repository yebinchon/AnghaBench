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
struct file {struct bsg_device* private_data; } ;
struct bsg_device {scalar_t__ queued_cmds; scalar_t__ max_queue; int /*<<< orphan*/  lock; int /*<<< orphan*/  done_list; int /*<<< orphan*/  wq_free; int /*<<< orphan*/  wq_done; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table *wait)
{
	struct bsg_device *bd = file->private_data;
	unsigned int mask = 0;

	FUNC1(file, &bd->wq_done, wait);
	FUNC1(file, &bd->wq_free, wait);

	FUNC2(&bd->lock);
	if (!FUNC0(&bd->done_list))
		mask |= POLLIN | POLLRDNORM;
	if (bd->queued_cmds >= bd->max_queue)
		mask |= POLLOUT;
	FUNC3(&bd->lock);

	return mask;
}