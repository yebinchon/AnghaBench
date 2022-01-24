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
 int /*<<< orphan*/  LINUX_SMP_IPI ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC1(int cpu, unsigned int action)
{
	FUNC0(cpu, LINUX_SMP_IPI, action);
	/* "CPU" may be TC of same VPE, VPE of same CPU, or different CPU */
}