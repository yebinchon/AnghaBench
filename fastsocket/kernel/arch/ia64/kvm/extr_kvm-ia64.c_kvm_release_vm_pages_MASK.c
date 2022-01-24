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
struct page {int dummy; } ;
struct kvm_memslots {int nmemslots; struct kvm_memory_slot* memslots; } ;
struct kvm_memory_slot {unsigned long base_gfn; int npages; scalar_t__* rmap; } ;
struct kvm {int /*<<< orphan*/  memslots; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 struct kvm_memslots* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kvm *kvm)
{
	struct kvm_memslots *slots;
	struct kvm_memory_slot *memslot;
	int i, j;
	unsigned long base_gfn;

	slots = FUNC1(kvm->memslots);
	for (i = 0; i < slots->nmemslots; i++) {
		memslot = &slots->memslots[i];
		base_gfn = memslot->base_gfn;

		for (j = 0; j < memslot->npages; j++) {
			if (memslot->rmap[j])
				FUNC0((struct page *)memslot->rmap[j]);
		}
	}
}