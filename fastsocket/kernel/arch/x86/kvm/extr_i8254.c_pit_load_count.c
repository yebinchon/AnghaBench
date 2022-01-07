
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct kvm_kpit_state {int flags; TYPE_1__* channels; int lock; } ;
struct TYPE_5__ {TYPE_3__* vpit; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_6__ {struct kvm_kpit_state pit_state; } ;
struct TYPE_4__ {int count; int mode; int count_load_time; } ;


 int KVM_PIT_FLAGS_HPET_LEGACY ;
 int WARN_ON (int) ;
 int create_pit_timer (struct kvm*,int,int) ;
 int destroy_pit_timer (TYPE_3__*) ;
 int ktime_get () ;
 int mutex_is_locked (int *) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static void pit_load_count(struct kvm *kvm, int channel, u32 val)
{
 struct kvm_kpit_state *ps = &kvm->arch.vpit->pit_state;

 WARN_ON(!mutex_is_locked(&ps->lock));

 pr_debug("pit: load_count val is %d, channel is %d\n", val, channel);





 if (val == 0)
  val = 0x10000;

 ps->channels[channel].count = val;

 if (channel != 0) {
  ps->channels[channel].count_load_time = ktime_get();
  return;
 }



 switch (ps->channels[0].mode) {
 case 0:
 case 1:

 case 4:
  if (!(ps->flags & KVM_PIT_FLAGS_HPET_LEGACY)) {
   create_pit_timer(kvm, val, 0);
  }
  break;
 case 2:
 case 3:
  if (!(ps->flags & KVM_PIT_FLAGS_HPET_LEGACY)){
   create_pit_timer(kvm, val, 1);
  }
  break;
 default:
  destroy_pit_timer(kvm->arch.vpit);
 }
}
