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
 int /*<<< orphan*/  ASYNC_BANK0_BASE ; 
 int /*<<< orphan*/  ASYNC_BANK0_SIZE ; 
 int /*<<< orphan*/  ASYNC_BANK1_BASE ; 
 int /*<<< orphan*/  ASYNC_BANK1_SIZE ; 
 int /*<<< orphan*/  ASYNC_BANK2_BASE ; 
 int /*<<< orphan*/  ASYNC_BANK2_SIZE ; 
 int /*<<< orphan*/  ASYNC_BANK3_BASE ; 
 int /*<<< orphan*/  ASYNC_BANK3_SIZE ; 
 int BFIN_MEM_ACCESS_CORE ; 
 int BFIN_MEM_ACCESS_CORE_ONLY ; 
 int BFIN_MEM_ACCESS_DMA ; 
 int BFIN_MEM_ACCESS_IDMA ; 
 int BFIN_MEM_ACCESS_ITEST ; 
 int /*<<< orphan*/  BOOT_ROM_LENGTH ; 
 int /*<<< orphan*/  BOOT_ROM_START ; 
 int /*<<< orphan*/  COREB_L1_CODE_LENGTH ; 
 int /*<<< orphan*/  COREB_L1_CODE_START ; 
 int /*<<< orphan*/  COREB_L1_DATA_A_LENGTH ; 
 int /*<<< orphan*/  COREB_L1_DATA_A_START ; 
 int /*<<< orphan*/  COREB_L1_DATA_B_LENGTH ; 
 int /*<<< orphan*/  COREB_L1_DATA_B_START ; 
 int /*<<< orphan*/  COREB_L1_SCRATCH_START ; 
 int EFAULT ; 
 int /*<<< orphan*/  FIXED_CODE_START ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  L1_CODE_LENGTH ; 
 int /*<<< orphan*/  L1_CODE_START ; 
 int /*<<< orphan*/  L1_DATA_A_LENGTH ; 
 int /*<<< orphan*/  L1_DATA_A_START ; 
 int /*<<< orphan*/  L1_DATA_B_LENGTH ; 
 int /*<<< orphan*/  L1_DATA_B_START ; 
 int /*<<< orphan*/  L1_ROM_LENGTH ; 
 int /*<<< orphan*/  L1_ROM_START ; 
 int /*<<< orphan*/  L1_SCRATCH_LENGTH ; 
 int /*<<< orphan*/  L1_SCRATCH_START ; 
 int /*<<< orphan*/  L2_LENGTH ; 
 int /*<<< orphan*/  L2_START ; 
 unsigned long SYSMMR_BASE ; 
 unsigned long ULONG_MAX ; 
 scalar_t__ FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  physical_mem_end ; 
 int FUNC3 () ; 

int FUNC4(unsigned long addr, unsigned long size)
{
	int cpu = FUNC3();

	/* Check that things do not wrap around */
	if (addr > ULONG_MAX - size)
		return -EFAULT;

	if (FUNC1(addr, size, FIXED_CODE_START, physical_mem_end))
		return BFIN_MEM_ACCESS_CORE;

	if (FUNC2(addr, size, L1_CODE_START, L1_CODE_LENGTH))
		return cpu == 0 ? BFIN_MEM_ACCESS_ITEST : BFIN_MEM_ACCESS_IDMA;
	if (FUNC2(addr, size, L1_SCRATCH_START, L1_SCRATCH_LENGTH))
		return cpu == 0 ? BFIN_MEM_ACCESS_CORE_ONLY : -EFAULT;
	if (FUNC2(addr, size, L1_DATA_A_START, L1_DATA_A_LENGTH))
		return cpu == 0 ? BFIN_MEM_ACCESS_CORE : BFIN_MEM_ACCESS_IDMA;
	if (FUNC2(addr, size, L1_DATA_B_START, L1_DATA_B_LENGTH))
		return cpu == 0 ? BFIN_MEM_ACCESS_CORE : BFIN_MEM_ACCESS_IDMA;
#ifdef COREB_L1_CODE_START
	if (in_mem_const(addr, size, COREB_L1_CODE_START, COREB_L1_CODE_LENGTH))
		return cpu == 1 ? BFIN_MEM_ACCESS_ITEST : BFIN_MEM_ACCESS_IDMA;
	if (in_mem_const(addr, size, COREB_L1_SCRATCH_START, L1_SCRATCH_LENGTH))
		return cpu == 1 ? BFIN_MEM_ACCESS_CORE_ONLY : -EFAULT;
	if (in_mem_const(addr, size, COREB_L1_DATA_A_START, COREB_L1_DATA_A_LENGTH))
		return cpu == 1 ? BFIN_MEM_ACCESS_CORE : BFIN_MEM_ACCESS_IDMA;
	if (in_mem_const(addr, size, COREB_L1_DATA_B_START, COREB_L1_DATA_B_LENGTH))
		return cpu == 1 ? BFIN_MEM_ACCESS_CORE : BFIN_MEM_ACCESS_IDMA;
#endif
	if (FUNC2(addr, size, L2_START, L2_LENGTH))
		return BFIN_MEM_ACCESS_CORE;

	if (addr >= SYSMMR_BASE)
		return BFIN_MEM_ACCESS_CORE_ONLY;

	/* We can't read EBIU banks that aren't enabled or we end up hanging
	 * on the access to the async space.
	 */
	if (FUNC2(addr, size, ASYNC_BANK0_BASE, ASYNC_BANK0_SIZE))
		return FUNC0(0, 0);
	if (FUNC2(addr, size, ASYNC_BANK1_BASE, ASYNC_BANK1_SIZE))
		return FUNC0(1, 0);
	if (FUNC2(addr, size, ASYNC_BANK2_BASE, ASYNC_BANK2_SIZE))
		return FUNC0(2, 1);
	if (FUNC2(addr, size, ASYNC_BANK3_BASE, ASYNC_BANK3_SIZE))
		return FUNC0(3, 1);

	if (FUNC2(addr, size, BOOT_ROM_START, BOOT_ROM_LENGTH))
		return BFIN_MEM_ACCESS_CORE;
	if (FUNC2(addr, size, L1_ROM_START, L1_ROM_LENGTH))
		return BFIN_MEM_ACCESS_DMA;

	return -EFAULT;
}