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
struct poll_table_struct {int dummy; } ;
struct ib_ucm_file {int /*<<< orphan*/  events; int /*<<< orphan*/  poll_wait; } ;
struct file {struct ib_ucm_file* private_data; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *filp,
				struct poll_table_struct *wait)
{
	struct ib_ucm_file *file = filp->private_data;
	unsigned int mask = 0;

	FUNC1(filp, &file->poll_wait, wait);

	if (!FUNC0(&file->events))
		mask = POLLIN | POLLRDNORM;

	return mask;
}