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
struct vm_area_struct {int /*<<< orphan*/  vm_mm; } ;

/* Variables and functions */
 int DPTEL ; 
 unsigned long DPTEU ; 
 int IPTEL ; 
 unsigned long IPTEU ; 
 unsigned long MMU_NO_CONTEXT ; 
 unsigned long PAGE_MASK ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int xPTEL_V ; 

void FUNC3(struct vm_area_struct *vma, unsigned long addr)
{
	unsigned long pteu, cnx, flags;

	addr &= PAGE_MASK;

	/* make sure the context doesn't migrate and defend against
	 * interference from vmalloc'd regions */
	FUNC1(flags);

	cnx = FUNC2(vma->vm_mm);

	if (cnx != MMU_NO_CONTEXT) {
		pteu = addr | (cnx & 0x000000ffUL);
		IPTEU = pteu;
		DPTEU = pteu;
		if (IPTEL & xPTEL_V)
			IPTEL = 0;
		if (DPTEL & xPTEL_V)
			DPTEL = 0;
	}

	FUNC0(flags);
}