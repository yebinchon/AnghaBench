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
struct cpuinfo_x86 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  X86_FEATURE_ACC ; 
 int /*<<< orphan*/  X86_FEATURE_ACPI ; 
 int /*<<< orphan*/  FUNC0 (struct cpuinfo_x86*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_has_apic ; 

__attribute__((used)) static int FUNC1(struct cpuinfo_x86 *c)
{
	if (!cpu_has_apic)
		return 0;
	if (!FUNC0(c, X86_FEATURE_ACPI) || !FUNC0(c, X86_FEATURE_ACC))
		return 0;
	return 1;
}