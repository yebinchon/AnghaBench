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
struct TYPE_5__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_3__* kvm; TYPE_2__ arch; } ;
struct kvm_memslots {struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {int npages; scalar_t__ userspace_addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  srcu; int /*<<< orphan*/  memslots; } ;
struct TYPE_4__ {scalar_t__ gmslm; scalar_t__ gmsor; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 scalar_t__ VIRTIODESCSPACE ; 
 struct kvm_memslots* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC3(struct kvm_vcpu *vcpu)
{
	int idx;
	struct kvm_memory_slot *mem;
	struct kvm_memslots *memslots;

	idx = FUNC1(&vcpu->kvm->srcu);
	memslots = FUNC0(vcpu->kvm->memslots);

	mem = &memslots->memslots[0];

	vcpu->arch.sie_block->gmsor = mem->userspace_addr;
	vcpu->arch.sie_block->gmslm =
		mem->userspace_addr +
		(mem->npages << PAGE_SHIFT) +
		VIRTIODESCSPACE - 1ul;

	FUNC2(&vcpu->kvm->srcu, idx);
}