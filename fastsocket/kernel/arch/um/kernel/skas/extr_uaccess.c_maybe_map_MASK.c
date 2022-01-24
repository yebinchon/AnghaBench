#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pte_t ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,int,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static pte_t *FUNC4(unsigned long virt, int is_write)
{
	pte_t *pte = FUNC3(current->mm, virt);
	int err, dummy_code;

	if ((pte == NULL) || !FUNC1(*pte) ||
	    (is_write && !FUNC2(*pte))) {
		err = FUNC0(virt, 0, is_write, 1, &dummy_code);
		if (err)
			return NULL;
		pte = FUNC3(current->mm, virt);
	}
	if (!FUNC1(*pte))
		pte = NULL;

	return pte;
}