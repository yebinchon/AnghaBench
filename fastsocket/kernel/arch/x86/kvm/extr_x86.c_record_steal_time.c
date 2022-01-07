
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int version; int steal; } ;
struct TYPE_5__ {int msr_val; TYPE_3__ steal; int stime; scalar_t__ accum_steal; } ;
struct TYPE_6__ {TYPE_1__ st; } ;
struct kvm_vcpu {TYPE_2__ arch; int kvm; } ;
struct kvm_steal_time {int dummy; } ;


 int KVM_MSR_ENABLED ;
 int kvm_read_guest (int ,int ,TYPE_3__*,int) ;
 int kvm_write_guest (int ,int ,TYPE_3__*,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void record_steal_time(struct kvm_vcpu *vcpu)
{
 if (!(vcpu->arch.st.msr_val & KVM_MSR_ENABLED))
  return;

 if (unlikely(kvm_read_guest(vcpu->kvm, vcpu->arch.st.stime,
  &vcpu->arch.st.steal, sizeof(struct kvm_steal_time))))
  return;

 vcpu->arch.st.steal.steal += vcpu->arch.st.accum_steal;
 vcpu->arch.st.steal.version += 2;
 vcpu->arch.st.accum_steal = 0;

 kvm_write_guest(vcpu->kvm, vcpu->arch.st.stime,
  &vcpu->arch.st.steal, sizeof(struct kvm_steal_time));
}
