
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ last_tsc_write; int tsc_catchup_shift; int tsc_catchup_mult; scalar_t__ last_tsc_nsec; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
typedef scalar_t__ s64 ;


 int pvclock_scale_delta (scalar_t__,int ,int ) ;

__attribute__((used)) static u64 compute_guest_tsc(struct kvm_vcpu *vcpu, s64 kernel_ns)
{
 u64 tsc = pvclock_scale_delta(kernel_ns-vcpu->arch.last_tsc_nsec,
          vcpu->arch.tsc_catchup_mult,
          vcpu->arch.tsc_catchup_shift);
 tsc += vcpu->arch.last_tsc_write;
 return tsc;
}
