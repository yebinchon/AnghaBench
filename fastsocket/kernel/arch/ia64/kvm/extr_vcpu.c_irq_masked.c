
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union ia64_tpr {int mmi; scalar_t__ mic; int val; } ;
struct kvm_vcpu {int dummy; } ;


 int ExtINT_VECTOR ;
 int IRQ_MASKED_BY_INSVC ;
 int IRQ_MASKED_BY_VTPR ;
 int IRQ_NO_MASKED ;
 int NMI_VECTOR ;
 int VCPU (struct kvm_vcpu*,int ) ;
 scalar_t__ is_higher_class (int,scalar_t__) ;
 scalar_t__ is_higher_irq (int,int) ;
 int tpr ;

int irq_masked(struct kvm_vcpu *vcpu, int h_pending, int h_inservice)
{
 union ia64_tpr vtpr;

 vtpr.val = VCPU(vcpu, tpr);

 if (h_inservice == NMI_VECTOR)
  return IRQ_MASKED_BY_INSVC;

 if (h_pending == NMI_VECTOR) {

  return IRQ_NO_MASKED;
 }

 if (h_inservice == ExtINT_VECTOR)
  return IRQ_MASKED_BY_INSVC;

 if (h_pending == ExtINT_VECTOR) {
  if (vtpr.mmi) {

   return IRQ_MASKED_BY_VTPR;
  } else
   return IRQ_NO_MASKED;
 }

 if (is_higher_irq(h_pending, h_inservice)) {
  if (is_higher_class(h_pending, vtpr.mic + (vtpr.mmi << 4)))
   return IRQ_NO_MASKED;
  else
   return IRQ_MASKED_BY_VTPR;
 } else {
  return IRQ_MASKED_BY_INSVC;
 }
}
