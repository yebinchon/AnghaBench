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
struct kvm_mmu_page {int /*<<< orphan*/  gfns; int /*<<< orphan*/  spt; int /*<<< orphan*/  link; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct kvm *kvm, struct kvm_mmu_page *sp)
{
	FUNC0(FUNC2(sp->spt));
	FUNC5(&sp->link);
	FUNC1(FUNC6(sp->spt));
	FUNC1(FUNC6(sp->gfns));
	FUNC3(sp);
	FUNC4(kvm, -1);
}