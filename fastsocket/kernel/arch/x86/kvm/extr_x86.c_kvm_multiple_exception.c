
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {int pending; int has_error_code; unsigned int nr; scalar_t__ error_code; } ;
struct TYPE_4__ {TYPE_1__ exception; } ;
struct kvm_vcpu {TYPE_2__ arch; int requests; } ;


 scalar_t__ DF_VECTOR ;
 int EXCPT_BENIGN ;
 int EXCPT_CONTRIBUTORY ;
 int EXCPT_PF ;
 int KVM_REQ_TRIPLE_FAULT ;
 int exception_class (unsigned int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void kvm_multiple_exception(struct kvm_vcpu *vcpu,
  unsigned nr, bool has_error, u32 error_code)
{
 u32 prev_nr;
 int class1, class2;

 if (!vcpu->arch.exception.pending) {
 queue:
  vcpu->arch.exception.pending = 1;
  vcpu->arch.exception.has_error_code = has_error;
  vcpu->arch.exception.nr = nr;
  vcpu->arch.exception.error_code = error_code;
  return;
 }


 prev_nr = vcpu->arch.exception.nr;
 if (prev_nr == DF_VECTOR) {

  set_bit(KVM_REQ_TRIPLE_FAULT, &vcpu->requests);
  return;
 }
 class1 = exception_class(prev_nr);
 class2 = exception_class(nr);
 if ((class1 == EXCPT_CONTRIBUTORY && class2 == EXCPT_CONTRIBUTORY)
  || (class1 == EXCPT_PF && class2 != EXCPT_BENIGN)) {

  vcpu->arch.exception.pending = 1;
  vcpu->arch.exception.has_error_code = 1;
  vcpu->arch.exception.nr = DF_VECTOR;
  vcpu->arch.exception.error_code = 0;
 } else



  goto queue;
}
