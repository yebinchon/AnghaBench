
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_44x {struct kvmppc_44x_shadow_ref* shadow_refs; } ;
struct kvmppc_44x_shadow_ref {int * page; scalar_t__ writeable; } ;


 int kvm_release_page_clean (int *) ;
 int kvm_release_page_dirty (int *) ;
 int kvmppc_44x_tlbie (unsigned int) ;
 int trace_kvm_stlb_inval (unsigned int) ;

__attribute__((used)) static void kvmppc_44x_shadow_release(struct kvmppc_vcpu_44x *vcpu_44x,
                                      unsigned int stlb_index)
{
 struct kvmppc_44x_shadow_ref *ref = &vcpu_44x->shadow_refs[stlb_index];

 if (!ref->page)
  return;




 kvmppc_44x_tlbie(stlb_index);


 if (ref->writeable)
  kvm_release_page_dirty(ref->page);
 else
  kvm_release_page_clean(ref->page);

 ref->page = ((void*)0);



 trace_kvm_stlb_inval(stlb_index);
}
