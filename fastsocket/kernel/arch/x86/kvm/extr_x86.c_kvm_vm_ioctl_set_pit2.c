
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct kvm_pit_state2 {int flags; int channels; } ;
struct TYPE_7__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_8__ {int count; } ;
struct TYPE_5__ {int flags; int lock; TYPE_4__* channels; } ;
struct TYPE_6__ {TYPE_1__ pit_state; } ;


 int KVM_PIT_FLAGS_HPET_LEGACY ;
 int kvm_pit_load_count (struct kvm*,int ,int ,int) ;
 int memcpy (TYPE_4__**,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_pit2(struct kvm *kvm, struct kvm_pit_state2 *ps)
{
 int r = 0, start = 0;
 u32 prev_legacy, cur_legacy;
 mutex_lock(&kvm->arch.vpit->pit_state.lock);
 prev_legacy = kvm->arch.vpit->pit_state.flags & KVM_PIT_FLAGS_HPET_LEGACY;
 cur_legacy = ps->flags & KVM_PIT_FLAGS_HPET_LEGACY;
 if (!prev_legacy && cur_legacy)
  start = 1;
 memcpy(&kvm->arch.vpit->pit_state.channels, &ps->channels,
        sizeof(kvm->arch.vpit->pit_state.channels));
 kvm->arch.vpit->pit_state.flags = ps->flags;
 kvm_pit_load_count(kvm, 0, kvm->arch.vpit->pit_state.channels[0].count, start);
 mutex_unlock(&kvm->arch.vpit->pit_state.lock);
 return r;
}
