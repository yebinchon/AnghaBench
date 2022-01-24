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
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  DDR_DMIPSPLLCFG_REG ; 
 unsigned int DMIPSPLLCFG_M1_MASK ; 
 unsigned int DMIPSPLLCFG_M1_SHIFT ; 
 unsigned int DMIPSPLLCFG_N1_MASK ; 
 unsigned int DMIPSPLLCFG_N1_SHIFT ; 
 unsigned int DMIPSPLLCFG_N2_MASK ; 
 unsigned int DMIPSPLLCFG_N2_SHIFT ; 
 unsigned int MIPSPLLCTL_M1CPU_MASK ; 
 unsigned int MIPSPLLCTL_M1CPU_SHIFT ; 
 unsigned int MIPSPLLCTL_N1_MASK ; 
 unsigned int MIPSPLLCTL_N1_SHIFT ; 
 unsigned int MIPSPLLCTL_N2_MASK ; 
 unsigned int MIPSPLLCTL_N2_SHIFT ; 
 int /*<<< orphan*/  PERF_MIPSPLLCTL_REG ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(void)
{
	unsigned int tmp, n1 = 0, n2 = 0, m1 = 0;

	/* BCM6338 has a fixed 240 Mhz frequency */
	if (FUNC0())
		return 240000000;

	/* BCM6345 has a fixed 140Mhz frequency */
	if (FUNC1())
		return 140000000;

	/*
	 * frequency depends on PLL configuration:
	 */
	if (FUNC2()) {
		/* 16MHz * (N1 + 1) * (N2 + 2) / (M1_CPU + 1) */
		tmp = FUNC5(PERF_MIPSPLLCTL_REG);
		n1 = (tmp & MIPSPLLCTL_N1_MASK) >> MIPSPLLCTL_N1_SHIFT;
		n2 = (tmp & MIPSPLLCTL_N2_MASK) >> MIPSPLLCTL_N2_SHIFT;
		m1 = (tmp & MIPSPLLCTL_M1CPU_MASK) >> MIPSPLLCTL_M1CPU_SHIFT;
		n1 += 1;
		n2 += 2;
		m1 += 1;
	}

	if (FUNC3()) {
		/* 16MHz * N1 * N2 / M1_CPU */
		tmp = FUNC4(DDR_DMIPSPLLCFG_REG);
		n1 = (tmp & DMIPSPLLCFG_N1_MASK) >> DMIPSPLLCFG_N1_SHIFT;
		n2 = (tmp & DMIPSPLLCFG_N2_MASK) >> DMIPSPLLCFG_N2_SHIFT;
		m1 = (tmp & DMIPSPLLCFG_M1_MASK) >> DMIPSPLLCFG_M1_SHIFT;
	}

	return (16 * 1000000 * n1 * n2) / m1;
}