
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_12__ {int hsave_msr; TYPE_2__* hsave; } ;
struct vcpu_svm {int sysenter_eip; int sysenter_esp; TYPE_6__ nested; TYPE_5__* vmcb; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_10__ {int star; int lstar; int cstar; int kernel_gs_base; int sfmask; int sysenter_cs; int dbgctl; int br_from; int br_to; int last_excp_from; int last_excp_to; } ;
struct TYPE_9__ {int tsc_offset; } ;
struct TYPE_11__ {TYPE_4__ save; TYPE_3__ control; } ;
struct TYPE_7__ {int tsc_offset; } ;
struct TYPE_8__ {TYPE_1__ control; } ;
 int is_nested (struct vcpu_svm*) ;
 int kvm_get_msr_common (struct kvm_vcpu*,unsigned int,int*) ;
 int native_read_tsc () ;
 int svm_scale_tsc (struct kvm_vcpu*,int ) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static int svm_get_msr(struct kvm_vcpu *vcpu, unsigned ecx, u64 *data)
{
 struct vcpu_svm *svm = to_svm(vcpu);

 switch (ecx) {
 case 135: {
  u64 tsc_offset;

  if (is_nested(svm))
   tsc_offset = svm->nested.hsave->control.tsc_offset;
  else
   tsc_offset = svm->vmcb->control.tsc_offset;

  *data = tsc_offset + svm_scale_tsc(vcpu, native_read_tsc());
  break;
 }
 case 133:
  *data = svm->vmcb->save.star;
  break;
 case 138:
  *data = svm->vmcb->save.sysenter_cs;
  break;
 case 137:
  *data = svm->sysenter_eip;
  break;
 case 136:
  *data = svm->sysenter_esp;
  break;



 case 143:
  *data = svm->vmcb->save.dbgctl;
  break;
 case 142:
  *data = svm->vmcb->save.br_from;
  break;
 case 141:
  *data = svm->vmcb->save.br_to;
  break;
 case 140:
  *data = svm->vmcb->save.last_excp_from;
  break;
 case 139:
  *data = svm->vmcb->save.last_excp_to;
  break;
 case 128:
  *data = svm->nested.hsave_msr;
  break;
 case 129:
  *data = 0;
  break;
 case 134:
  *data = 0x01000065;
  break;
 default:
  return kvm_get_msr_common(vcpu, ecx, data);
 }
 return 0;
}
