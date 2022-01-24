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
struct mddev {unsigned long safemode_delay; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 scalar_t__ FUNC1 (char const*,unsigned long*,int) ; 

__attribute__((used)) static ssize_t
FUNC2(struct mddev *mddev, const char *cbuf, size_t len)
{
	unsigned long msec;

	if (FUNC1(cbuf, &msec, 3) < 0)
		return -EINVAL;
	if (msec == 0)
		mddev->safemode_delay = 0;
	else {
		unsigned long old_delay = mddev->safemode_delay;
		mddev->safemode_delay = (msec*HZ)/1000;
		if (mddev->safemode_delay == 0)
			mddev->safemode_delay = 1;
		if (mddev->safemode_delay < old_delay)
			FUNC0((unsigned long)mddev);
	}
	return len;
}