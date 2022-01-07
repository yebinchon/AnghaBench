
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kvm_kpit_channel_state {int status_latched; int status; int rw_mode; int mode; int bcd; } ;
struct TYPE_6__ {TYPE_2__* vpit; } ;
struct kvm {TYPE_3__ arch; } ;
struct TYPE_4__ {int lock; struct kvm_kpit_channel_state* channels; } ;
struct TYPE_5__ {TYPE_1__ pit_state; } ;


 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 int pit_get_out (struct kvm*,int) ;

__attribute__((used)) static void pit_latch_status(struct kvm *kvm, int channel)
{
 struct kvm_kpit_channel_state *c =
  &kvm->arch.vpit->pit_state.channels[channel];

 WARN_ON(!mutex_is_locked(&kvm->arch.vpit->pit_state.lock));

 if (!c->status_latched) {

  c->status = ((pit_get_out(kvm, channel) << 7) |
    (c->rw_mode << 4) |
    (c->mode << 1) |
    c->bcd);
  c->status_latched = 1;
 }
}
