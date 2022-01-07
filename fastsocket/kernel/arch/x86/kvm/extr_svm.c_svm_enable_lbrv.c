
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct vcpu_svm {TYPE_2__* vmcb; int * msrpm; } ;
struct TYPE_3__ {int lbr_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;


 int MSR_IA32_LASTBRANCHFROMIP ;
 int MSR_IA32_LASTBRANCHTOIP ;
 int MSR_IA32_LASTINTFROMIP ;
 int MSR_IA32_LASTINTTOIP ;
 int set_msr_interception (int *,int ,int,int) ;

__attribute__((used)) static void svm_enable_lbrv(struct vcpu_svm *svm)
{
 u32 *msrpm = svm->msrpm;

 svm->vmcb->control.lbr_ctl = 1;
 set_msr_interception(msrpm, MSR_IA32_LASTBRANCHFROMIP, 1, 1);
 set_msr_interception(msrpm, MSR_IA32_LASTBRANCHTOIP, 1, 1);
 set_msr_interception(msrpm, MSR_IA32_LASTINTFROMIP, 1, 1);
 set_msr_interception(msrpm, MSR_IA32_LASTINTTOIP, 1, 1);
}
