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
struct TYPE_2__ {int /*<<< orphan*/  pte1; int /*<<< orphan*/  pgd; int /*<<< orphan*/ * pmd1; int /*<<< orphan*/  pte0; int /*<<< orphan*/ * pmd0; } ;
struct kimage {TYPE_1__ arch; int /*<<< orphan*/  control_code_page; } ;
typedef  int /*<<< orphan*/  pmd_t ;

/* Variables and functions */
 unsigned long FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct kimage *image)
{
	void *control_page;
	pmd_t *pmd = NULL;

	control_page = FUNC2(image->control_code_page);
#ifdef CONFIG_X86_PAE
	pmd = image->arch.pmd0;
#endif
	FUNC1(
		image->arch.pgd, pmd, image->arch.pte0,
		(unsigned long)control_page, FUNC0(control_page));
#ifdef CONFIG_X86_PAE
	pmd = image->arch.pmd1;
#endif
	FUNC1(
		image->arch.pgd, pmd, image->arch.pte1,
		FUNC0(control_page), FUNC0(control_page));
}