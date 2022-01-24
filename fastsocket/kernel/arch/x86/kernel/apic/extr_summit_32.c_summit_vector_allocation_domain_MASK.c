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
struct cpumask {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ALL_CPUS ; 
 int /*<<< orphan*/ * FUNC0 (struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (struct cpumask*) ; 

__attribute__((used)) static void FUNC2(int cpu, struct cpumask *retmask)
{
	/* Careful. Some cpus do not strictly honor the set of cpus
	 * specified in the interrupt destination when using lowest
	 * priority interrupt delivery mode.
	 *
	 * In particular there was a hyperthreading cpu observed to
	 * deliver interrupts to the wrong hyperthread when only one
	 * hyperthread was specified in the interrupt desitination.
	 */
	FUNC1(retmask);
	FUNC0(retmask)[0] = APIC_ALL_CPUS;
}