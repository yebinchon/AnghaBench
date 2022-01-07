
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int requests; } ;
struct vcpu_svm {TYPE_1__ vcpu; } ;


 int KVM_REQ_TRIPLE_FAULT ;
 scalar_t__ is_erratum_383 () ;
 int pr_err (char*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void svm_handle_mce(struct vcpu_svm *svm)
{
 if (is_erratum_383()) {




  pr_err("KVM: Guest triggered AMD Erratum 383\n");

  set_bit(KVM_REQ_TRIPLE_FAULT, &svm->vcpu.requests);

  return;
 }





 asm volatile (
  "int $0x12\n");


 return;
}
