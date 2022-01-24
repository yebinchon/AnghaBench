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
 int /*<<< orphan*/  FUNC0 () ; 
 int GRU_NUM_TFM ; 
 int UVH_GR0_TLB_INT0_CONFIG ; 
 int UVH_GR0_TLB_INT1_CONFIG ; 
 int UVH_GR1_TLB_INT0_CONFIG ; 
 int UVH_GR1_TLB_INT1_CONFIG ; 
 int UV_MAX_INT_CORES ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static unsigned long FUNC4(int chiplet, int cpu, int *corep)
{
	unsigned long mmr = 0;
	int core;

	/*
	 * We target the cores of a blade and not the hyperthreads themselves.
	 * There is a max of 8 cores per socket and 2 sockets per blade,
	 * making for a max total of 16 cores (i.e., 16 CPUs without
	 * hyperthreading and 32 CPUs with hyperthreading).
	 */
	core = FUNC1(cpu) + UV_MAX_INT_CORES * FUNC3(cpu);
	if (core >= GRU_NUM_TFM || FUNC2(cpu))
		return 0;

	if (chiplet == 0) {
		mmr = UVH_GR0_TLB_INT0_CONFIG +
		    core * (UVH_GR0_TLB_INT1_CONFIG - UVH_GR0_TLB_INT0_CONFIG);
	} else if (chiplet == 1) {
		mmr = UVH_GR1_TLB_INT0_CONFIG +
		    core * (UVH_GR1_TLB_INT1_CONFIG - UVH_GR1_TLB_INT0_CONFIG);
	} else {
		FUNC0();
	}

	*corep = core;
	return mmr;
}