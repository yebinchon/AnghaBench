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
struct cpu_hw_events {struct cpu_hw_events* shared_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cpu_hw_events*) ; 

__attribute__((used)) static void FUNC1(struct cpu_hw_events *cpuc)
{
	FUNC0(cpuc->shared_regs);
	FUNC0(cpuc);
}