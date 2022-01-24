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
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,char*,size_t) ; 
 int /*<<< orphan*/  power_saving_thread ; 
 size_t ps_tsk_num ; 
 scalar_t__* ps_tsks ; 

__attribute__((used)) static int FUNC1(void)
{
	ps_tsks[ps_tsk_num] = FUNC0(power_saving_thread,
		(void *)(unsigned long)ps_tsk_num,
		"power_saving/%d", ps_tsk_num);
	if (ps_tsks[ps_tsk_num]) {
		ps_tsk_num++;
		return 0;
	}
	return -EINVAL;
}