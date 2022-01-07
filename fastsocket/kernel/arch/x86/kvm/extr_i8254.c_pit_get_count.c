
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_kpit_channel_state {int mode; int count; } ;
struct TYPE_6__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
typedef int s64 ;
struct TYPE_4__ {int lock; struct kvm_kpit_channel_state* channels; } ;
struct TYPE_5__ {TYPE_1__ pit_state; } ;


 int KVM_PIT_FREQ ;
 int NSEC_PER_SEC ;
 int WARN_ON (int) ;
 int kpit_elapsed (struct kvm*,struct kvm_kpit_channel_state*,int) ;
 int mod_64 (int,int) ;
 int muldiv64 (int,int ,int ) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static int pit_get_count(struct kvm *kvm, int channel)
{
 struct kvm_kpit_channel_state *c =
  &kvm->arch.vpit->pit_state.channels[channel];
 s64 d, t;
 int counter;

 WARN_ON(!mutex_is_locked(&kvm->arch.vpit->pit_state.lock));

 t = kpit_elapsed(kvm, c, channel);
 d = muldiv64(t, KVM_PIT_FREQ, NSEC_PER_SEC);

 switch (c->mode) {
 case 0:
 case 1:
 case 4:
 case 5:
  counter = (c->count - d) & 0xffff;
  break;
 case 3:

  counter = c->count - (mod_64((2 * d), c->count));
  break;
 default:
  counter = c->count - mod_64(d, c->count);
  break;
 }
 return counter;
}
