
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int host_gs_base; } ;


 int MSR_GS_BASE ;
 TYPE_1__* to_svm (struct kvm_vcpu*) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void load_host_msrs(struct kvm_vcpu *vcpu)
{



}
