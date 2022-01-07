
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kvm_vcpu {TYPE_2__* kvm; } ;
struct TYPE_3__ {scalar_t__ is_sn2; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;


 int _IA64_REG_AR_ITC ;
 unsigned long ia64_getreg (int ) ;
 unsigned long rtc_time () ;

__attribute__((used)) static unsigned long kvm_get_itc(struct kvm_vcpu *vcpu)
{





  return ia64_getreg(_IA64_REG_AR_ITC);
}
