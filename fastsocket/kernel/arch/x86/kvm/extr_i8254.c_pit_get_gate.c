
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* vpit; } ;
struct kvm {TYPE_4__ arch; } ;
struct TYPE_6__ {TYPE_1__* channels; int lock; } ;
struct TYPE_7__ {TYPE_2__ pit_state; } ;
struct TYPE_5__ {int gate; } ;


 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static int pit_get_gate(struct kvm *kvm, int channel)
{
 WARN_ON(!mutex_is_locked(&kvm->arch.vpit->pit_state.lock));

 return kvm->arch.vpit->pit_state.channels[channel].gate;
}
