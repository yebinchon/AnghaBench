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
struct cpuidle_device {int state_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpuidle_device*,int) ; 

void FUNC1(struct cpuidle_device *device)
{
	int i;

	for (i = 0; i < device->state_count; i++)
		FUNC0(device, i);
}