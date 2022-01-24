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
struct cb710_chip {int dummy; } ;

/* Variables and functions */
 unsigned int CB710_DUMP_ACCESS_16 ; 
 unsigned int CB710_DUMP_ACCESS_32 ; 
 unsigned int CB710_DUMP_ACCESS_8 ; 
 unsigned int CB710_DUMP_ACCESS_MASK ; 
 unsigned int CB710_DUMP_REGS_ALL ; 
 unsigned int CB710_DUMP_REGS_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct cb710_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cb710_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct cb710_chip*,unsigned int) ; 

void FUNC3(struct cb710_chip *chip, unsigned select)
{
	if (!(select & CB710_DUMP_REGS_MASK))
		select = CB710_DUMP_REGS_ALL;
	if (!(select & CB710_DUMP_ACCESS_MASK))
		select |= CB710_DUMP_ACCESS_8;

	if (select & CB710_DUMP_ACCESS_32)
		FUNC1(chip, select);
	if (select & CB710_DUMP_ACCESS_16)
		FUNC0(chip, select);
	if (select & CB710_DUMP_ACCESS_8)
		FUNC2(chip, select);
}