
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
struct TYPE_3__ {int * pae_root; } ;
struct TYPE_4__ {TYPE_1__ mmu; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;


 int ASSERT (struct kvm_vcpu*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INVALID_PAGE ;
 int __GFP_DMA32 ;
 struct page* alloc_page (int) ;
 int free_mmu_pages (struct kvm_vcpu*) ;
 int * page_address (struct page*) ;

__attribute__((used)) static int alloc_mmu_pages(struct kvm_vcpu *vcpu)
{
 struct page *page;
 int i;

 ASSERT(vcpu);






 page = alloc_page(GFP_KERNEL | __GFP_DMA32);
 if (!page)
  goto error_1;
 vcpu->arch.mmu.pae_root = page_address(page);
 for (i = 0; i < 4; ++i)
  vcpu->arch.mmu.pae_root[i] = INVALID_PAGE;

 return 0;

error_1:
 free_mmu_pages(vcpu);
 return -ENOMEM;
}
