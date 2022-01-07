
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_8__ {TYPE_3__* vpit; } ;
struct kvm {TYPE_4__ arch; } ;
struct TYPE_6__ {TYPE_1__* channels; } ;
struct TYPE_7__ {TYPE_2__ pit_state; } ;
struct TYPE_5__ {int mode; } ;


 int pit_load_count (struct kvm*,int,int ) ;

void kvm_pit_load_count(struct kvm *kvm, int channel, u32 val, int hpet_legacy_start)
{
 u8 saved_mode;
 if (hpet_legacy_start) {

  saved_mode = kvm->arch.vpit->pit_state.channels[0].mode;
  kvm->arch.vpit->pit_state.channels[0].mode = 0xff;
  pit_load_count(kvm, channel, val);
  kvm->arch.vpit->pit_state.channels[0].mode = saved_mode;
 } else {
  pit_load_count(kvm, channel, val);
 }
}
