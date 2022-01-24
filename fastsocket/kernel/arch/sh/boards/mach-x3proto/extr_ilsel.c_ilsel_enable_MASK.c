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
typedef  scalar_t__ ilsel_source_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ILSEL_KEY ; 
 int /*<<< orphan*/  ILSEL_LEVELS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ilsel_level_map ; 
 scalar_t__ FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 

int FUNC4(ilsel_source_t set)
{
	unsigned int bit;

	/* Aliased sources must use ilsel_enable_fixed() */
	FUNC0(set > ILSEL_KEY);

	do {
		bit = FUNC2(&ilsel_level_map, ILSEL_LEVELS);
	} while (FUNC3(bit, &ilsel_level_map));

	FUNC1(set, bit);

	return bit;
}