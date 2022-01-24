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
struct kvm_memslots {int nmemslots; TYPE_1__* memslots; } ;
struct kvm {int /*<<< orphan*/  memslots; } ;
struct TYPE_2__ {scalar_t__ npages; } ;

/* Variables and functions */
 scalar_t__ KVM_MIN_ALLOC_MMU_PAGES ; 
 unsigned int KVM_PERMILLE_MMU_PAGES ; 
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 struct kvm_memslots* FUNC1 (int /*<<< orphan*/ ) ; 

unsigned int FUNC2(struct kvm *kvm)
{
	int i;
	unsigned int nr_mmu_pages;
	unsigned int  nr_pages = 0;
	struct kvm_memslots *slots;

	slots = FUNC1(kvm->memslots);
	for (i = 0; i < slots->nmemslots; i++)
		nr_pages += slots->memslots[i].npages;

	nr_mmu_pages = nr_pages * KVM_PERMILLE_MMU_PAGES / 1000;
	nr_mmu_pages = FUNC0(nr_mmu_pages,
			(unsigned int) KVM_MIN_ALLOC_MMU_PAGES);

	return nr_mmu_pages;
}