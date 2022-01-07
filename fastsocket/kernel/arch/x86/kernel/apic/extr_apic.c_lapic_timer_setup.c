
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int features; } ;
typedef enum clock_event_mode { ____Placeholder_clock_event_mode } clock_event_mode ;


 int APIC_LVTT ;
 unsigned int APIC_LVT_MASKED ;
 int APIC_TMICT ;
 int CLOCK_EVT_FEAT_DUMMY ;





 unsigned int LOCAL_TIMER_VECTOR ;
 int __setup_APIC_LVTT (int ,int,int) ;
 unsigned int apic_read (int ) ;
 int apic_write (int ,int) ;
 int calibration_result ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void lapic_timer_setup(enum clock_event_mode mode,
         struct clock_event_device *evt)
{
 unsigned long flags;
 unsigned int v;


 if (evt->features & CLOCK_EVT_FEAT_DUMMY)
  return;

 local_irq_save(flags);

 switch (mode) {
 case 131:
 case 132:
  __setup_APIC_LVTT(calibration_result,
      mode != 131, 1);
  break;
 case 128:
 case 129:
  v = apic_read(APIC_LVTT);
  v |= (APIC_LVT_MASKED | LOCAL_TIMER_VECTOR);
  apic_write(APIC_LVTT, v);
  apic_write(APIC_TMICT, 0xffffffff);
  break;
 case 130:

  break;
 }

 local_irq_restore(flags);
}
