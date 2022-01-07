
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int shadow_efer; } ;
struct TYPE_10__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_3__* vmcb; } ;
struct TYPE_8__ {scalar_t__ cpl; } ;
struct TYPE_9__ {TYPE_2__ save; } ;


 int EFER_SVME ;
 int UD_VECTOR ;
 int is_paging (TYPE_4__*) ;
 int kvm_inject_gp (TYPE_4__*,int ) ;
 int kvm_queue_exception (TYPE_4__*,int ) ;

__attribute__((used)) static int nested_svm_check_permissions(struct vcpu_svm *svm)
{
 if (!(svm->vcpu.arch.shadow_efer & EFER_SVME)
     || !is_paging(&svm->vcpu)) {
  kvm_queue_exception(&svm->vcpu, UD_VECTOR);
  return 1;
 }

 if (svm->vmcb->save.cpl) {
  kvm_inject_gp(&svm->vcpu, 0);
  return 1;
 }

       return 0;
}
