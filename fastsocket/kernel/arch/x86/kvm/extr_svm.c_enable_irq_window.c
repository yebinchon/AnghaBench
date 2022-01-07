
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int dummy; } ;
struct kvm_vcpu {int dummy; } ;


 scalar_t__ gif_set (struct vcpu_svm*) ;
 int nested_svm_intr (struct vcpu_svm*) ;
 int nsvm_printk (char*) ;
 int svm_inject_irq (struct vcpu_svm*,int) ;
 int svm_set_vintr (struct vcpu_svm*) ;
 struct vcpu_svm* to_svm (struct kvm_vcpu*) ;

__attribute__((used)) static void enable_irq_window(struct kvm_vcpu *vcpu)
{
 struct vcpu_svm *svm = to_svm(vcpu);
 nsvm_printk("Trying to open IRQ window\n");

 nested_svm_intr(svm);





 if (gif_set(svm)) {
  svm_set_vintr(svm);
  svm_inject_irq(svm, 0x0);
 }
}
