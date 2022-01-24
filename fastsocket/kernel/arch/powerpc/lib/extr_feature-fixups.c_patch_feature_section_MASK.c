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
struct fixup_entry {unsigned long mask; unsigned long value; int /*<<< orphan*/  alt_end_off; int /*<<< orphan*/  alt_start_off; int /*<<< orphan*/  end_off; int /*<<< orphan*/  start_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPC_INST_NOP ; 
 unsigned int* FUNC0 (struct fixup_entry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(unsigned long value, struct fixup_entry *fcur)
{
	unsigned int *start, *end, *alt_start, *alt_end, *src, *dest;

	start = FUNC0(fcur, fcur->start_off);
	end = FUNC0(fcur, fcur->end_off);
	alt_start = FUNC0(fcur, fcur->alt_start_off);
	alt_end = FUNC0(fcur, fcur->alt_end_off);

	if ((alt_end - alt_start) > (end - start))
		return 1;

	if ((value & fcur->mask) == fcur->value)
		return 0;

	src = alt_start;
	dest = start;

	for (; src < alt_end; src++, dest++) {
		if (FUNC1(src, dest, alt_start, alt_end))
			return 1;
	}

	for (; dest < end; dest++)
		FUNC2(dest, PPC_INST_NOP);

	return 0;
}