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
 long FUNC0 (long) ; 
 scalar_t__ FUNC1 (long,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

void FUNC3(unsigned long time)
{
#if 0
	long tmp;
	
	tmp = jiffies + time/(1000000/HZ);
	do {
		tmp = schedule_timeout_interruptible(tmp);
	} while(time_after(tmp, jiffies));
#else
	FUNC2(time);
#endif
	return;
}