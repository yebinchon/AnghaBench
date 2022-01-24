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
typedef  int /*<<< orphan*/  pte_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (struct mm_struct*,unsigned long,int /*<<< orphan*/ *,unsigned long,int) ; 

pte_t FUNC2(struct mm_struct *mm, unsigned long addr,
			      pte_t *ptep)
{
	unsigned long old = FUNC1(mm, addr, ptep, ~0UL, 1);
	return FUNC0(old);
}