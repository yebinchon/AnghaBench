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
typedef  enum kmemcheck_shadow { ____Placeholder_kmemcheck_shadow } kmemcheck_shadow ;

/* Variables and functions */
 int KMEMCHECK_SHADOW_INITIALIZED ; 
 void* FUNC0 (unsigned long) ; 
 int FUNC1 (void*,size_t) ; 

bool FUNC2(unsigned long addr, size_t size)
{
	enum kmemcheck_shadow status;
	void *shadow;

	shadow = FUNC0(addr);
	if (!shadow)
		return true;

	status = FUNC1(shadow, size);

	return status == KMEMCHECK_SHADOW_INITIALIZED;
}