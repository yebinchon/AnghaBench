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

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  __saved_damlr ; 
 int /*<<< orphan*/  __saved_dampr ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long) ; 
 scalar_t__ FUNC4 (void const*) ; 
 unsigned long FUNC5 (unsigned long) ; 

__attribute__((used)) static inline int FUNC6(const void *vaddr)
{
#ifdef CONFIG_MMU
	unsigned long pte;

	__saved_dampr = __get_DAMPR(2);
	__saved_damlr = __get_DAMLR(2);
#endif
	if (FUNC4(vaddr))
		return 1;
#ifdef CONFIG_MMU
	pte = gdbstub_virt_to_pte((unsigned long) vaddr);
	if (pte) {
		__set_DAMPR(2, pte);
		__set_DAMLR(2, (unsigned long) vaddr & PAGE_MASK);
		return 1;
	}
#endif
	return 0;
}