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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 unsigned long MEM_ISOLATE_COUNT ; 
 int NOTIFY_OK ; 
 int FUNC0 (void*) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct notifier_block *self,
				 unsigned long action, void *arg)
{
	int ret = 0;

	if (action == MEM_ISOLATE_COUNT)
		ret = FUNC0(arg);

	if (ret)
		ret = FUNC1(ret);
	else
		ret = NOTIFY_OK;

	return ret;
}