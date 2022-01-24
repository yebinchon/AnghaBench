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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  doneq; int /*<<< orphan*/  proc_list; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ meye ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *file, poll_table *wait)
{
	unsigned int res = 0;

	FUNC1(&meye.lock);
	FUNC3(file, &meye.proc_list, wait);
	if (FUNC0(meye.doneq))
		res = POLLIN | POLLRDNORM;
	FUNC2(&meye.lock);
	return res;
}