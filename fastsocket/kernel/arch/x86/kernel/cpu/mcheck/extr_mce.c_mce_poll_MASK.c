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
struct TYPE_2__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  mce_apei_read_done ; 
 int /*<<< orphan*/  mce_wait ; 
 TYPE_1__ mcelog ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC3(struct file *file, poll_table *wait)
{
	FUNC1(file, &mce_wait, wait);
	if (FUNC2(mcelog.next))
		return POLLIN | POLLRDNORM;
	if (!mce_apei_read_done && FUNC0())
		return POLLIN | POLLRDNORM;
	return 0;
}