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
 int /*<<< orphan*/  FUNC0 (struct cpumask*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct cpumask*) ; 

__attribute__((used)) static void FUNC2(int cpu, struct cpumask *retmask)
{
	FUNC0(retmask);
	FUNC1(cpu, retmask);
}