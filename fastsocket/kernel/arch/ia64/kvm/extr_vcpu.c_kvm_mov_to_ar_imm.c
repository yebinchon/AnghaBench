
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct TYPE_4__ {unsigned long imm; scalar_t__ s; } ;
struct TYPE_5__ {TYPE_1__ M30; } ;
typedef TYPE_2__ INST64 ;


 int vcpu_set_itc (struct kvm_vcpu*,unsigned long) ;

void kvm_mov_to_ar_imm(struct kvm_vcpu *vcpu, INST64 inst)
{
 unsigned long imm;

 if (inst.M30.s)
  imm = -inst.M30.imm;
 else
  imm = inst.M30.imm;

 vcpu_set_itc(vcpu, imm);
}
