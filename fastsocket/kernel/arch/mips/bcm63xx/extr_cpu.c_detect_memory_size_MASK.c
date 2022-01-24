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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int MEMC_CFG_32B_MASK ; 
 int MEMC_CFG_COL_MASK ; 
 int MEMC_CFG_COL_SHIFT ; 
 int /*<<< orphan*/  MEMC_CFG_REG ; 
 int MEMC_CFG_ROW_MASK ; 
 int MEMC_CFG_ROW_SHIFT ; 
 int SDRAM_CFG_32B_MASK ; 
 int SDRAM_CFG_BANK_MASK ; 
 int SDRAM_CFG_COL_MASK ; 
 int SDRAM_CFG_COL_SHIFT ; 
 int /*<<< orphan*/  SDRAM_CFG_REG ; 
 int SDRAM_CFG_ROW_MASK ; 
 int SDRAM_CFG_ROW_SHIFT ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(void)
{
	unsigned int cols = 0, rows = 0, is_32bits = 0, banks = 0;
	u32 val;

	if (FUNC1())
		return (8 * 1024 * 1024);

	if (FUNC0() || FUNC2()) {
		val = FUNC5(SDRAM_CFG_REG);
		rows = (val & SDRAM_CFG_ROW_MASK) >> SDRAM_CFG_ROW_SHIFT;
		cols = (val & SDRAM_CFG_COL_MASK) >> SDRAM_CFG_COL_SHIFT;
		is_32bits = (val & SDRAM_CFG_32B_MASK) ? 1 : 0;
		banks = (val & SDRAM_CFG_BANK_MASK) ? 2 : 1;
	}

	if (FUNC3()) {
		val = FUNC4(MEMC_CFG_REG);
		rows = (val & MEMC_CFG_ROW_MASK) >> MEMC_CFG_ROW_SHIFT;
		cols = (val & MEMC_CFG_COL_MASK) >> MEMC_CFG_COL_SHIFT;
		is_32bits = (val & MEMC_CFG_32B_MASK) ? 0 : 1;
		banks = 2;
	}

	/* 0 => 11 address bits ... 2 => 13 address bits */
	rows += 11;

	/* 0 => 8 address bits ... 2 => 10 address bits */
	cols += 8;

	return 1 << (cols + rows + (is_32bits + 1) + banks);
}