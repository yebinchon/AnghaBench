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
struct ppc64_tlb_batch {int index; int /*<<< orphan*/  ssize; int /*<<< orphan*/  psize; int /*<<< orphan*/ * pte; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  mm; } ;
struct cpumask {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct cpumask const*) ; 
 struct cpumask* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct ppc64_tlb_batch *batch)
{
	const struct cpumask *tmp;
	int i, local = 0;

	i = batch->index;
	tmp = FUNC1(FUNC5());
	if (FUNC0(FUNC4(batch->mm), tmp))
		local = 1;
	if (i == 1)
		FUNC2(batch->vaddr[0], batch->pte[0],
				batch->psize, batch->ssize, local);
	else
		FUNC3(i, local);
	batch->index = 0;
}