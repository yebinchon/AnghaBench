
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int tsc_catchup_mult; int tsc_catchup_shift; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int NSEC_PER_SEC ;
 int kvm_get_time_scale (int ,int,int *,int *) ;

__attribute__((used)) static void kvm_init_tsc_catchup(struct kvm_vcpu *vcpu, u32 this_tsc_khz)
{

 kvm_get_time_scale(this_tsc_khz, NSEC_PER_SEC / 1000,
      &vcpu->arch.tsc_catchup_shift,
      &vcpu->arch.tsc_catchup_mult);
}
