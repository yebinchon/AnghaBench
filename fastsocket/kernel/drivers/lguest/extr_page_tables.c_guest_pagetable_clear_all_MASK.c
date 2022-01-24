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
struct lg_cpu {int /*<<< orphan*/  lg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lg_cpu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct lg_cpu *cpu)
{
	FUNC1(cpu->lg);
	/* We need the Guest kernel stack mapped again. */
	FUNC0(cpu);
}