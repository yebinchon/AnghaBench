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
 int FUNC0 (void (*) (),int) ; 
 void FUNC1 () ; 
 void FUNC2 () ; 
 void FUNC3 () ; 
 void FUNC4 () ; 
 int* eit_vector ; 
 void FUNC5 () ; 
 void FUNC6 () ; 
 scalar_t__ smp_call_function_interrupt ; 
 scalar_t__ smp_call_function_single_interrupt ; 
 scalar_t__ smp_flush_cache_all_interrupt ; 
 scalar_t__ smp_invalidate_interrupt ; 
 scalar_t__ smp_ipi_timer_interrupt ; 
 scalar_t__ smp_reschedule_interrupt ; 

__attribute__((used)) static void FUNC7(void)
{
	extern void FUNC8(void);
	extern void FUNC9(void);
	extern void FUNC10(void);
	extern void FUNC11(void);
	extern void FUNC12(void);
	extern void FUNC0(void);

	eit_vector[0] = 0xd0c00001; /* seth r0, 0x01 */
	eit_vector[1] = FUNC0(default_eit_handler, 1);
	eit_vector[4] = 0xd0c00010; /* seth r0, 0x10 */
	eit_vector[5] = FUNC0(default_eit_handler, 5);
	eit_vector[8] = FUNC0(rie_handler, 8);
	eit_vector[12] = FUNC0(alignment_check, 12);
	eit_vector[16] = FUNC0(ill_trap, 16);
	eit_vector[17] = FUNC0(debug_trap, 17);
	eit_vector[18] = FUNC0(system_call, 18);
	eit_vector[19] = FUNC0(ill_trap, 19);
	eit_vector[20] = FUNC0(ill_trap, 20);
	eit_vector[21] = FUNC0(ill_trap, 21);
	eit_vector[22] = FUNC0(ill_trap, 22);
	eit_vector[23] = FUNC0(ill_trap, 23);
	eit_vector[24] = FUNC0(ill_trap, 24);
	eit_vector[25] = FUNC0(ill_trap, 25);
	eit_vector[26] = FUNC0(ill_trap, 26);
	eit_vector[27] = FUNC0(ill_trap, 27);
	eit_vector[28] = FUNC0(cache_flushing_handler, 28);
	eit_vector[29] = FUNC0(ill_trap, 29);
	eit_vector[30] = FUNC0(ill_trap, 30);
	eit_vector[31] = FUNC0(ill_trap, 31);
	eit_vector[32] = FUNC0(ei_handler, 32);
	eit_vector[64] = FUNC0(pie_handler, 64);
#ifdef CONFIG_MMU
	eit_vector[68] = BRA_INSN(ace_handler, 68);
	eit_vector[72] = BRA_INSN(tme_handler, 72);
#endif /* CONFIG_MMU */
#ifdef CONFIG_SMP
	eit_vector[184] = (unsigned long)smp_reschedule_interrupt;
	eit_vector[185] = (unsigned long)smp_invalidate_interrupt;
	eit_vector[186] = (unsigned long)smp_call_function_interrupt;
	eit_vector[187] = (unsigned long)smp_ipi_timer_interrupt;
	eit_vector[188] = (unsigned long)smp_flush_cache_all_interrupt;
	eit_vector[189] = 0;	/* CPU_BOOT_IPI */
	eit_vector[190] = (unsigned long)smp_call_function_single_interrupt;
	eit_vector[191] = 0;
#endif
	FUNC0();
}