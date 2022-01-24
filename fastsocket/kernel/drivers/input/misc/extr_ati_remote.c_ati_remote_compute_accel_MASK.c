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
struct ati_remote {unsigned long acc_jiffies; scalar_t__ old_jiffies; } ;

/* Variables and functions */
 unsigned long jiffies ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (unsigned long,scalar_t__) ; 
 scalar_t__ FUNC2 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct ati_remote *ati_remote)
{
	static const char accel[] = { 1, 2, 4, 6, 9, 13, 20 };
	unsigned long now = jiffies;
	int acc;

	if (FUNC1(now, ati_remote->old_jiffies + FUNC0(250))) {
		acc = 1;
		ati_remote->acc_jiffies = now;
	}
	else if (FUNC2(now, ati_remote->acc_jiffies + FUNC0(125)))
		acc = accel[0];
	else if (FUNC2(now, ati_remote->acc_jiffies + FUNC0(250)))
		acc = accel[1];
	else if (FUNC2(now, ati_remote->acc_jiffies + FUNC0(500)))
		acc = accel[2];
	else if (FUNC2(now, ati_remote->acc_jiffies + FUNC0(1000)))
		acc = accel[3];
	else if (FUNC2(now, ati_remote->acc_jiffies + FUNC0(1500)))
		acc = accel[4];
	else if (FUNC2(now, ati_remote->acc_jiffies + FUNC0(2000)))
		acc = accel[5];
	else
		acc = accel[6];

	return acc;
}