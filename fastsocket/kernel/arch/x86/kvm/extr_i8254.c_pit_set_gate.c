
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvm_kpit_channel_state {int mode; int gate; int count_load_time; } ;
struct TYPE_6__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_4__ {int lock; struct kvm_kpit_channel_state* channels; } ;
struct TYPE_5__ {TYPE_1__ pit_state; } ;


 int WARN_ON (int) ;
 int ktime_get () ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void pit_set_gate(struct kvm *kvm, int channel, u32 val)
{
 struct kvm_kpit_channel_state *c =
  &kvm->arch.vpit->pit_state.channels[channel];

 WARN_ON(!mutex_is_locked(&kvm->arch.vpit->pit_state.lock));

 switch (c->mode) {
 default:
 case 0:
 case 4:

  break;
 case 1:
 case 2:
 case 3:
 case 5:

  if (c->gate < val)
   c->count_load_time = ktime_get();
  break;
 }

 c->gate = val;
}
