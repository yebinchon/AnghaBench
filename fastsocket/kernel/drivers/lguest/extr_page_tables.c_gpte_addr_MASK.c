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
struct lg_cpu {int dummy; } ;
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pgd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long PAGE_SHIFT ; 
 int _PAGE_PRESENT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned long) ; 

__attribute__((used)) static unsigned long FUNC4(struct lg_cpu *cpu,
				pgd_t gpgd, unsigned long vaddr)
{
	unsigned long gpage = FUNC2(gpgd) << PAGE_SHIFT;

	FUNC0(!(FUNC1(gpgd) & _PAGE_PRESENT));
	return gpage + FUNC3(vaddr) * sizeof(pte_t);
}