
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pending; } ;
struct TYPE_4__ {int irq_ack; TYPE_1__ pit_timer; int lock; struct kvm_kpit_channel_state* channels; scalar_t__ flags; } ;
struct kvm_pit {TYPE_2__ pit_state; int kvm; } ;
struct kvm_kpit_channel_state {int mode; int gate; } ;


 int atomic_set (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pit_load_count (int ,int,int ) ;

void kvm_pit_reset(struct kvm_pit *pit)
{
 int i;
 struct kvm_kpit_channel_state *c;

 mutex_lock(&pit->pit_state.lock);
 pit->pit_state.flags = 0;
 for (i = 0; i < 3; i++) {
  c = &pit->pit_state.channels[i];
  c->mode = 0xff;
  c->gate = (i != 2);
  pit_load_count(pit->kvm, i, 0);
 }
 mutex_unlock(&pit->pit_state.lock);

 atomic_set(&pit->pit_state.pit_timer.pending, 0);
 pit->pit_state.irq_ack = 1;
}
