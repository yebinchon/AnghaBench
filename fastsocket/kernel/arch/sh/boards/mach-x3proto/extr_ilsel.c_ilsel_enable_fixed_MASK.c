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
typedef  int /*<<< orphan*/  ilsel_source_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  ilsel_level_map ; 
 unsigned int FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 

int FUNC3(ilsel_source_t set, unsigned int level)
{
	unsigned int bit = FUNC1(level - 1);

	if (FUNC2(bit, &ilsel_level_map))
		return -EBUSY;

	FUNC0(set, bit);

	return bit;
}