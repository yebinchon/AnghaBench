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
struct cas {int fw_load_addr; int fw_size; int* fw_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP83065_MII_MEM ; 
 int /*<<< orphan*/  DP83065_MII_REGD ; 
 int /*<<< orphan*/  DP83065_MII_REGE ; 
 int /*<<< orphan*/  FUNC0 (struct cas*) ; 
 int /*<<< orphan*/  FUNC1 (struct cas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct cas *cp)
{
	int i;

	FUNC0(cp);

	/* expanded memory access mode */
	FUNC1(cp, DP83065_MII_MEM, 0x0);

	/* pointer configuration for new firmware */
	FUNC1(cp, DP83065_MII_REGE, 0x8ff9);
	FUNC1(cp, DP83065_MII_REGD, 0xbd);
	FUNC1(cp, DP83065_MII_REGE, 0x8ffa);
	FUNC1(cp, DP83065_MII_REGD, 0x82);
	FUNC1(cp, DP83065_MII_REGE, 0x8ffb);
	FUNC1(cp, DP83065_MII_REGD, 0x0);
	FUNC1(cp, DP83065_MII_REGE, 0x8ffc);
	FUNC1(cp, DP83065_MII_REGD, 0x39);

	/* download new firmware */
	FUNC1(cp, DP83065_MII_MEM, 0x1);
	FUNC1(cp, DP83065_MII_REGE, cp->fw_load_addr);
	for (i = 0; i < cp->fw_size; i++)
		FUNC1(cp, DP83065_MII_REGD, cp->fw_data[i]);

	/* enable firmware */
	FUNC1(cp, DP83065_MII_REGE, 0x8ff8);
	FUNC1(cp, DP83065_MII_REGD, 0x1);
}