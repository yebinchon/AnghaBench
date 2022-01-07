
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_pit_state {int dummy; } ;
struct TYPE_4__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_1__ arch; } ;
struct TYPE_6__ {int lock; } ;
struct TYPE_5__ {TYPE_3__ pit_state; } ;


 int memcpy (struct kvm_pit_state*,TYPE_3__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kvm_vm_ioctl_get_pit(struct kvm *kvm, struct kvm_pit_state *ps)
{
 int r = 0;

 mutex_lock(&kvm->arch.vpit->pit_state.lock);
 memcpy(ps, &kvm->arch.vpit->pit_state, sizeof(struct kvm_pit_state));
 mutex_unlock(&kvm->arch.vpit->pit_state.lock);
 return r;
}
