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
 int /*<<< orphan*/  SE_INT_BASE_INT ; 
 int /*<<< orphan*/  SE_PIN_BASE_INT ; 
 scalar_t__ SRAM_VA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pll4_clk ; 
 void* pnx4008_cpu_suspend ; 
 int /*<<< orphan*/  pnx4008_cpu_suspend_sz ; 
 void* saved_sram ; 

__attribute__((used)) static inline void FUNC10(void)
{
	void (*pnx4008_cpu_suspend_ptr) (void);

	FUNC7();
	FUNC5();

	FUNC2(pll4_clk);

	FUNC1(0xffffffff, FUNC0(SE_PIN_BASE_INT));
	FUNC1(0xffffffff, FUNC0(SE_INT_BASE_INT));

	/*saving portion of SRAM to be used by suspend function. */
	FUNC9(saved_sram, (void *)SRAM_VA, pnx4008_cpu_suspend_sz);

	/*make sure SRAM copy gets physically written into SDRAM.
	   SDRAM will be placed into self-refresh during power down */
	FUNC4();

	/*copy suspend function into SRAM */
	FUNC9((void *)SRAM_VA, pnx4008_cpu_suspend, pnx4008_cpu_suspend_sz);

	/*do suspend */
	pnx4008_cpu_suspend_ptr = (void *)SRAM_VA;
	pnx4008_cpu_suspend_ptr();

	/*restoring portion of SRAM that was used by suspend function */
	FUNC9((void *)SRAM_VA, saved_sram, pnx4008_cpu_suspend_sz);

	FUNC3(pll4_clk);

	FUNC6();
	FUNC8();
}