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
struct mm_struct {unsigned long brk; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

unsigned long FUNC1(struct mm_struct *mm)
{
	unsigned long range_end = mm->brk + 0x02000000;
	return FUNC0(mm->brk, range_end, 0) ? : mm->brk;
}