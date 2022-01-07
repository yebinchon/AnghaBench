
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tcr; unsigned long dec; int dec_timer; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int TCR_DIE ;
 int del_timer (int *) ;
 scalar_t__ get_jiffies_64 () ;
 int mod_timer (int *,scalar_t__) ;
 unsigned long tb_ticks_per_jiffy ;

void kvmppc_emulate_dec(struct kvm_vcpu *vcpu)
{
 if (vcpu->arch.tcr & TCR_DIE) {



  unsigned long nr_jiffies;

  nr_jiffies = vcpu->arch.dec / tb_ticks_per_jiffy;
  mod_timer(&vcpu->arch.dec_timer,
            get_jiffies_64() + nr_jiffies);
 } else {
  del_timer(&vcpu->arch.dec_timer);
 }
}
