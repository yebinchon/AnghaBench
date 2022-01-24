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
typedef  int /*<<< orphan*/  u64 ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; } ;
struct kvm_rmap_desc {int /*<<< orphan*/ ** sptes; struct kvm_rmap_desc* more; } ;
struct TYPE_2__ {int /*<<< orphan*/  level; } ;
struct kvm_mmu_page {TYPE_1__ role; int /*<<< orphan*/ * spt; int /*<<< orphan*/ * gfns; } ;
typedef  int /*<<< orphan*/  gfn_t ;

/* Variables and functions */
 int RMAP_EXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct kvm_vcpu*) ; 
 struct kvm_mmu_page* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct kvm_vcpu *vcpu, u64 *spte, gfn_t gfn)
{
	struct kvm_mmu_page *sp;
	struct kvm_rmap_desc *desc;
	unsigned long *rmapp;
	int i, count = 0;

	if (!FUNC2(*spte))
		return count;
	gfn = FUNC6(vcpu->kvm, gfn);
	sp = FUNC4(FUNC0(spte));
	sp->gfns[spte - sp->spt] = gfn;
	rmapp = FUNC1(vcpu->kvm, gfn, sp->role.level);
	if (!*rmapp) {
		FUNC5("rmap_add: %p %llx 0->1\n", spte, *spte);
		*rmapp = (unsigned long)spte;
	} else if (!(*rmapp & 1)) {
		FUNC5("rmap_add: %p %llx 1->many\n", spte, *spte);
		desc = FUNC3(vcpu);
		desc->sptes[0] = (u64 *)*rmapp;
		desc->sptes[1] = spte;
		*rmapp = (unsigned long)desc | 1;
	} else {
		FUNC5("rmap_add: %p %llx many->many\n", spte, *spte);
		desc = (struct kvm_rmap_desc *)(*rmapp & ~1ul);
		while (desc->sptes[RMAP_EXT-1] && desc->more) {
			desc = desc->more;
			count += RMAP_EXT;
		}
		if (desc->sptes[RMAP_EXT-1]) {
			desc->more = FUNC3(vcpu);
			desc = desc->more;
		}
		for (i = 0; desc->sptes[i]; ++i)
			;
		desc->sptes[i] = spte;
	}
	return count;
}