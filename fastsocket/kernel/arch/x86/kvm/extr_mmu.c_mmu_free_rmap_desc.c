
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_rmap_desc {int dummy; } ;


 int kfree (struct kvm_rmap_desc*) ;

__attribute__((used)) static void mmu_free_rmap_desc(struct kvm_rmap_desc *rd)
{
 kfree(rd);
}
