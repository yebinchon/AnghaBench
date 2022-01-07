
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int kvm; } ;
struct vcpu_svm {TYPE_1__ vcpu; } ;
struct page {int dummy; } ;
typedef enum km_type { ____Placeholder_km_type } km_type ;


 int PAGE_SHIFT ;
 struct page* gfn_to_page (int ,int) ;
 scalar_t__ is_error_page (struct page*) ;
 void* kmap_atomic (struct page*,int) ;
 int kvm_inject_gp (TYPE_1__*,int ) ;
 int kvm_release_page_clean (struct page*) ;

__attribute__((used)) static void *nested_svm_map(struct vcpu_svm *svm, u64 gpa, enum km_type idx)
{
 struct page *page;

 page = gfn_to_page(svm->vcpu.kvm, gpa >> PAGE_SHIFT);
 if (is_error_page(page))
  goto error;

 return kmap_atomic(page, idx);

error:
 kvm_release_page_clean(page);
 kvm_inject_gp(&svm->vcpu, 0);

 return ((void*)0);
}
