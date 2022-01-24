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
 int BAD_APICID ; 
 int nr_cpu_ids ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  x86_bios_cpu_apicid ; 

__attribute__((used)) static int FUNC1(int mps_cpu)
{
	if (mps_cpu < nr_cpu_ids)
		return (int)FUNC0(x86_bios_cpu_apicid, mps_cpu);
	else
		return BAD_APICID;
}