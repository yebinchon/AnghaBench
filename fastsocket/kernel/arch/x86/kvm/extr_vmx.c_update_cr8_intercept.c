
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;


 int TPR_THRESHOLD ;
 int vmcs_write32 (int ,int) ;

__attribute__((used)) static void update_cr8_intercept(struct kvm_vcpu *vcpu, int tpr, int irr)
{
 if (irr == -1 || tpr < irr) {
  vmcs_write32(TPR_THRESHOLD, 0);
  return;
 }

 vmcs_write32(TPR_THRESHOLD, irr);
}
