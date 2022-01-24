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
 scalar_t__ SRAM_VA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pll4_clk ; 
 void* pnx4008_cpu_standby ; 
 int /*<<< orphan*/  pnx4008_cpu_standby_sz ; 
 void* saved_sram ; 

__attribute__((used)) static inline void FUNC8(void)
{
	void (*pnx4008_cpu_standby_ptr) (void);

	FUNC5();
	FUNC3();

	FUNC0(pll4_clk);

	/*saving portion of SRAM to be used by suspend function. */
	FUNC7(saved_sram, (void *)SRAM_VA, pnx4008_cpu_standby_sz);

	/*make sure SRAM copy gets physically written into SDRAM.
	   SDRAM will be placed into self-refresh during power down */
	FUNC2();

	/*copy suspend function into SRAM */
	FUNC7((void *)SRAM_VA, pnx4008_cpu_standby, pnx4008_cpu_standby_sz);

	/*do suspend */
	pnx4008_cpu_standby_ptr = (void *)SRAM_VA;
	pnx4008_cpu_standby_ptr();

	/*restoring portion of SRAM that was used by suspend function */
	FUNC7((void *)SRAM_VA, saved_sram, pnx4008_cpu_standby_sz);

	FUNC1(pll4_clk);

	FUNC4();
	FUNC6();
}