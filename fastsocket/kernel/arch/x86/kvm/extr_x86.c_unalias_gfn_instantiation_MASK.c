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
struct kvm_mem_aliases {int naliases; struct kvm_mem_alias* aliases; } ;
struct kvm_mem_alias {int flags; scalar_t__ base_gfn; scalar_t__ npages; scalar_t__ target_gfn; } ;
struct TYPE_2__ {int /*<<< orphan*/  aliases; } ;
struct kvm {TYPE_1__ arch; } ;
typedef  scalar_t__ gfn_t ;

/* Variables and functions */
 int KVM_ALIAS_INVALID ; 
 struct kvm_mem_aliases* FUNC0 (int /*<<< orphan*/ ) ; 

gfn_t FUNC1(struct kvm *kvm, gfn_t gfn)
{
	int i;
	struct kvm_mem_alias *alias;
	struct kvm_mem_aliases *aliases;

	aliases = FUNC0(kvm->arch.aliases);

	for (i = 0; i < aliases->naliases; ++i) {
		alias = &aliases->aliases[i];
		if (alias->flags & KVM_ALIAS_INVALID)
			continue;
		if (gfn >= alias->base_gfn
		    && gfn < alias->base_gfn + alias->npages)
			return alias->target_gfn + gfn - alias->base_gfn;
	}
	return gfn;
}