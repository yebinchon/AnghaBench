
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct kvm_pit_state {TYPE_1__* channels; } ;
struct TYPE_6__ {TYPE_3__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_8__ {int lock; } ;
struct TYPE_7__ {TYPE_4__ pit_state; } ;
struct TYPE_5__ {int count; } ;


 int kvm_pit_load_count (struct kvm*,int ,int ,int ) ;
 int memcpy (TYPE_4__*,struct kvm_pit_state*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_set_pit(struct kvm *kvm, struct kvm_pit_state *ps)
{
 int r = 0;

 mutex_lock(&kvm->arch.vpit->pit_state.lock);
 memcpy(&kvm->arch.vpit->pit_state, ps, sizeof(struct kvm_pit_state));
 kvm_pit_load_count(kvm, 0, ps->channels[0].count, 0);
 mutex_unlock(&kvm->arch.vpit->pit_state.lock);
 return r;
}
