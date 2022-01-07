
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm {int dummy; } ;


 int ENOMEM ;
 struct kvm* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 struct kvm* kzalloc (int,int ) ;

struct kvm *kvm_arch_create_vm(void)
{
 struct kvm *kvm;

 kvm = kzalloc(sizeof(struct kvm), GFP_KERNEL);
 if (!kvm)
  return ERR_PTR(-ENOMEM);

 return kvm;
}
