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
struct cpuinfo_mips {int core; void* tc_id; void* vpe_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  ST0_IM ; 
 int STATUSF_IP3 ; 
 int STATUSF_IP4 ; 
 int STATUSF_IP6 ; 
 int STATUSF_IP7 ; 
 void* TCBIND_CURTC ; 
 void* TCBIND_CURTC_SHIFT ; 
 void* TCBIND_CURVPE ; 
 void* TCBIND_CURVPE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 struct cpuinfo_mips current_cpu_data ; 
 int FUNC1 () ; 
 void* FUNC2 () ; 

__attribute__((used)) static void FUNC3(void)
{
	struct cpuinfo_mips *c = &current_cpu_data;

	/* Assume GIC is present */
	FUNC0(ST0_IM, STATUSF_IP3 | STATUSF_IP4 | STATUSF_IP6 |
				 STATUSF_IP7);

	/* Enable per-cpu interrupts: platform specific */

	c->core = (FUNC1() >> 1) & 0xff;
#if defined(CONFIG_MIPS_MT_SMP) || defined(CONFIG_MIPS_MT_SMTC)
	c->vpe_id = (read_c0_tcbind() >> TCBIND_CURVPE_SHIFT) & TCBIND_CURVPE;
#endif
#ifdef CONFIG_MIPS_MT_SMTC
	c->tc_id  = (read_c0_tcbind() >> TCBIND_CURTC_SHIFT) & TCBIND_CURTC;
#endif
}