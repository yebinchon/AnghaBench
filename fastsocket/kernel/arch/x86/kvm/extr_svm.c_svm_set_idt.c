
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vcpu_svm {TYPE_3__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct descriptor_table {int base; int limit; } ;
struct TYPE_4__ {int base; int limit; } ;
struct TYPE_5__ {TYPE_1__ idtr; } ;
struct TYPE_6__ {TYPE_2__ save; } ;


 int VMCB_DT ;
 int mark_dirty (TYPE_3__*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void svm_set_idt(struct kvm_vcpu *vcpu, struct descriptor_table *dt)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 svm->vmcb->save.idtr.limit = dt->limit;
 svm->vmcb->save.idtr.base = dt->base ;
 mark_dirty(svm->vmcb, VMCB_DT);
}
