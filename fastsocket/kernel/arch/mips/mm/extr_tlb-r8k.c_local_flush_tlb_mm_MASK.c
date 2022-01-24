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
struct mm_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC1 (struct mm_struct*,int) ; 
 int FUNC2 () ; 

void FUNC3(struct mm_struct *mm)
{
	int cpu = FUNC2();

	if (FUNC0(cpu, mm) != 0)
		FUNC1(mm, cpu);
}