
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_memslots {int nmemslots; TYPE_1__* memslots; } ;
struct kvm {int memslots; } ;
struct TYPE_2__ {scalar_t__ npages; } ;


 scalar_t__ KVM_MIN_ALLOC_MMU_PAGES ;
 unsigned int KVM_PERMILLE_MMU_PAGES ;
 unsigned int max (unsigned int,unsigned int) ;
 struct kvm_memslots* rcu_dereference (int ) ;

unsigned int kvm_mmu_calculate_mmu_pages(struct kvm *kvm)
{
 int i;
 unsigned int nr_mmu_pages;
 unsigned int nr_pages = 0;
 struct kvm_memslots *slots;

 slots = rcu_dereference(kvm->memslots);
 for (i = 0; i < slots->nmemslots; i++)
  nr_pages += slots->memslots[i].npages;

 nr_mmu_pages = nr_pages * KVM_PERMILLE_MMU_PAGES / 1000;
 nr_mmu_pages = max(nr_mmu_pages,
   (unsigned int) KVM_MIN_ALLOC_MMU_PAGES);

 return nr_mmu_pages;
}
