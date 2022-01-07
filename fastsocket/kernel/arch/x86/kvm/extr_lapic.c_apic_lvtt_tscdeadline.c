
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int timer_mode_mask; } ;
struct kvm_lapic {TYPE_1__ lapic_timer; } ;


 int APIC_LVTT ;
 int APIC_LVT_TIMER_TSCDEADLINE ;
 int apic_get_reg (struct kvm_lapic*,int ) ;

__attribute__((used)) static inline int apic_lvtt_tscdeadline(struct kvm_lapic *apic)
{
 return ((apic_get_reg(apic, APIC_LVTT) &
  apic->lapic_timer.timer_mode_mask) ==
   APIC_LVT_TIMER_TSCDEADLINE);
}
