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
 int GRU_NUM_TFM ; 
 int UV_MAX_INT_CORES ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

int FUNC4(void)
{
#ifdef CONFIG_IA64
	return uv_blade_processor_id() % GRU_NUM_TFM;
#else
	int cpu = FUNC0();
	int id, core;

	core = FUNC2(cpu);
	id = core + UV_MAX_INT_CORES * FUNC3(cpu);
	return id;
#endif
}