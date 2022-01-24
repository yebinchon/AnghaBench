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
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARAVIRT_LAZY_CPU ; 
 unsigned long FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  xen_cr3 ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned long cr3)
{
	FUNC0(FUNC5());

	FUNC7();  /* disables interrupts */

	/* Update while interrupts are disabled, so its atomic with
	   respect to ipis */
	FUNC4(xen_cr3, cr3);

	FUNC3(true, cr3);

#ifdef CONFIG_X86_64
	{
		pgd_t *user_pgd = xen_get_user_pgd(__va(cr3));
		if (user_pgd)
			__xen_write_cr3(false, __pa(user_pgd));
		else
			__xen_write_cr3(false, 0);
	}
#endif

	FUNC8(PARAVIRT_LAZY_CPU);  /* interrupts restored */
}