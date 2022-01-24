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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int HZ ; 
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ dtlk_has_indexing ; 
 int /*<<< orphan*/  dtlk_process_list ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  dtlk_timer ; 
 scalar_t__ FUNC3 () ; 
 int jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC6(struct file *file, poll_table * wait)
{
	int mask = 0;
	unsigned long expires;

	FUNC0(" dtlk_poll");
	/*
	   static long int j;
	   printk(".");
	   printk("<%ld>", jiffies-j);
	   j=jiffies;
	 */
	FUNC5(file, &dtlk_process_list, wait);

	if (dtlk_has_indexing && FUNC2()) {
	        FUNC1(&dtlk_timer);
		mask = POLLIN | POLLRDNORM;
	}
	if (FUNC3()) {
	        FUNC1(&dtlk_timer);
		mask |= POLLOUT | POLLWRNORM;
	}
	/* there are no exception conditions */

	/* There won't be any interrupts, so we set a timer instead. */
	expires = jiffies + 3*HZ / 100;
	FUNC4(&dtlk_timer, expires);

	return mask;
}