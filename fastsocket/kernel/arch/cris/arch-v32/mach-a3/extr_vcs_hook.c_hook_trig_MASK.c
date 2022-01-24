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
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 unsigned int* hook_base ; 

__attribute__((used)) static unsigned FUNC2(unsigned id)
{
	unsigned ret;

	/* preempt_disable(); */

	/* Dummy read from mem to make sure data has propagated to memory
	 * before trigging */
	ret = *hook_base;

	/* trigger hook */
	FUNC0(id);

	/* wait for call to finish */
	while (FUNC1(0) > 0) ;

	/* extract return value */

	ret = FUNC1(1);

	return ret;
}