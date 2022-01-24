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
 int /*<<< orphan*/  MSR_P4_CRU_ESCR0 ; 
 int /*<<< orphan*/  MSR_P4_IQ_PERFCTR0 ; 
 int /*<<< orphan*/  MSR_P4_IQ_PERFCTR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int smp_num_siblings ; 

__attribute__((used)) static int FUNC3(void)
{
	if (!FUNC2(MSR_P4_IQ_PERFCTR0))
		return 0;
#ifdef CONFIG_SMP
	if (smp_num_siblings > 1 && !reserve_perfctr_nmi(MSR_P4_IQ_PERFCTR1))
		goto fail1;
#endif
	if (!FUNC1(MSR_P4_CRU_ESCR0))
		goto fail2;
	/* RED-PEN why is ESCR1 not reserved here? */
	return 1;
 fail2:
#ifdef CONFIG_SMP
	if (smp_num_siblings > 1)
		release_perfctr_nmi(MSR_P4_IQ_PERFCTR1);
 fail1:
#endif
	FUNC0(MSR_P4_IQ_PERFCTR0);
	return 0;
}