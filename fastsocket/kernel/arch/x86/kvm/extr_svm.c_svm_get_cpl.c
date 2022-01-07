
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmcb_save_area {int cpl; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {TYPE_1__* vmcb; } ;
struct TYPE_3__ {struct vmcb_save_area save; } ;


 TYPE_2__* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_get_cpl(struct kvm_vcpu *vcpu)
{
 struct vmcb_save_area *save = &to_svm(vcpu)->vmcb->save;

 return save->cpl;
}
