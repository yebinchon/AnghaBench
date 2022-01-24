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

/* Variables and functions */
 int HZ ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 

__attribute__((used)) static int
FUNC1 (void)
{
	static unsigned long count, last_time;

	if (FUNC0(jiffies, last_time + 5 * HZ))
		count = 0;
	if (count < 5) {
		last_time = jiffies;
		count++;
		return 1;
	}
	return 0;

}