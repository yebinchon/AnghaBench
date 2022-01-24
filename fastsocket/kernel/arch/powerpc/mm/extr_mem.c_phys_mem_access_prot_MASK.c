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
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  pgprot_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* phys_mem_access_prot ) (struct file*,unsigned long,unsigned long,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ppc_md ; 
 int /*<<< orphan*/  FUNC2 (struct file*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 

pgprot_t FUNC3(struct file *file, unsigned long pfn,
			      unsigned long size, pgprot_t vma_prot)
{
	if (ppc_md.phys_mem_access_prot)
		return ppc_md.phys_mem_access_prot(file, pfn, size, vma_prot);

	if (!FUNC0(pfn))
		vma_prot = FUNC1(vma_prot);

	return vma_prot;
}