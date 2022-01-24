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
 int GFP_KERNEL ; 
 int __GFP_REPEAT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

pte_t *FUNC2(struct mm_struct *mm, unsigned long address)
{
	pte_t *pte = (pte_t *)FUNC0(GFP_KERNEL|__GFP_REPEAT);
	if (pte)
		FUNC1(pte);
	return pte;
}