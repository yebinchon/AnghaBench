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
struct kvm_userspace_memory_region {int dummy; } ;
struct kvm_memory_slot {int npages; unsigned long base_gfn; unsigned long* rmap; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long GPFN_PHYS_MMIO ; 
 unsigned long KVM_MAX_MEM_SIZE ; 
 unsigned long PAGE_SHIFT ; 
 int _PAGE_AR_RWX ; 
 int _PAGE_MA_UC ; 
 int _PAGE_MA_WB ; 
 unsigned long FUNC0 (struct kvm*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,unsigned long,unsigned long,int) ; 
 scalar_t__ FUNC3 (unsigned long) ; 

int FUNC4(struct kvm *kvm,
		struct kvm_memory_slot *memslot,
		struct kvm_memory_slot old,
		struct kvm_userspace_memory_region *mem,
		int user_alloc)
{
	unsigned long i;
	unsigned long pfn;
	int npages = memslot->npages;
	unsigned long base_gfn = memslot->base_gfn;

	if (base_gfn + npages > (KVM_MAX_MEM_SIZE >> PAGE_SHIFT))
		return -ENOMEM;

	for (i = 0; i < npages; i++) {
		pfn = FUNC0(kvm, base_gfn + i);
		if (!FUNC1(pfn)) {
			FUNC2(kvm, base_gfn + i,
					pfn << PAGE_SHIFT,
				_PAGE_AR_RWX | _PAGE_MA_WB);
			memslot->rmap[i] = (unsigned long)FUNC3(pfn);
		} else {
			FUNC2(kvm, base_gfn + i,
					GPFN_PHYS_MMIO | (pfn << PAGE_SHIFT),
					_PAGE_MA_UC);
			memslot->rmap[i] = 0;
			}
	}

	return 0;
}