
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {int vcpu; } ;


 int EMULATE_DONE ;
 int EMULTYPE_TRAP_UD ;
 int UD_VECTOR ;
 int emulate_instruction (int *,int ) ;
 int kvm_queue_exception (int *,int ) ;

__attribute__((used)) static int ud_interception(struct vcpu_svm *svm)
{
 int er;

 er = emulate_instruction(&svm->vcpu, EMULTYPE_TRAP_UD);
 if (er != EMULATE_DONE)
  kvm_queue_exception(&svm->vcpu, UD_VECTOR);
 return 1;
}
