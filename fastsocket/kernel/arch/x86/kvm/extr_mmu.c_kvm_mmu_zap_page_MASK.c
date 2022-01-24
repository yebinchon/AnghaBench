#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int invalid; int /*<<< orphan*/  direct; } ;
struct kvm_mmu_page {int /*<<< orphan*/  link; TYPE_2__ role; int /*<<< orphan*/  hash_link; int /*<<< orphan*/  root_count; scalar_t__ unsync; int /*<<< orphan*/  gfn; } ;
struct TYPE_6__ {int /*<<< orphan*/  active_mmu_pages; } ;
struct TYPE_4__ {int /*<<< orphan*/  mmu_shadow_zapped; } ;
struct kvm {TYPE_3__ arch; TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct kvm*,struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_mmu_page*) ; 
 int /*<<< orphan*/  FUNC11 (struct kvm*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct kvm *kvm, struct kvm_mmu_page *sp)
{
	int ret;

	FUNC10(sp);
	++kvm->stat.mmu_shadow_zapped;
	ret = FUNC9(kvm, sp);
	FUNC3(kvm, sp);
	FUNC5(kvm, sp);
	FUNC1(kvm);
	if (!sp->role.invalid && !sp->role.direct)
		FUNC11(kvm, sp->gfn);
	if (sp->unsync)
		FUNC7(kvm, sp);
	if (!sp->root_count) {
		FUNC0(&sp->hash_link);
		FUNC2(kvm, sp);
	} else {
		sp->role.invalid = 1;
		FUNC8(&sp->link, &kvm->arch.active_mmu_pages);
		FUNC6(kvm);
	}
	FUNC4(kvm);
	return ret;
}