
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct powermate_device {int static_brightness; int requires_update; int pulse_asleep; int pulse_awake; int pulse_speed; int pulse_table; int lock; } ;


 int UPDATE_PULSE_ASLEEP ;
 int UPDATE_PULSE_AWAKE ;
 int UPDATE_PULSE_MODE ;
 int UPDATE_STATIC_BRIGHTNESS ;
 int powermate_sync_state (struct powermate_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void powermate_pulse_led(struct powermate_device *pm, int static_brightness, int pulse_speed,
    int pulse_table, int pulse_asleep, int pulse_awake)
{
 unsigned long flags;

 if (pulse_speed < 0)
  pulse_speed = 0;
 if (pulse_table < 0)
  pulse_table = 0;
 if (pulse_speed > 510)
  pulse_speed = 510;
 if (pulse_table > 2)
  pulse_table = 2;

 pulse_asleep = !!pulse_asleep;
 pulse_awake = !!pulse_awake;


 spin_lock_irqsave(&pm->lock, flags);


 if (static_brightness != pm->static_brightness) {
  pm->static_brightness = static_brightness;
  pm->requires_update |= UPDATE_STATIC_BRIGHTNESS;
 }
 if (pulse_asleep != pm->pulse_asleep) {
  pm->pulse_asleep = pulse_asleep;
  pm->requires_update |= (UPDATE_PULSE_ASLEEP | UPDATE_STATIC_BRIGHTNESS);
 }
 if (pulse_awake != pm->pulse_awake) {
  pm->pulse_awake = pulse_awake;
  pm->requires_update |= (UPDATE_PULSE_AWAKE | UPDATE_STATIC_BRIGHTNESS);
 }
 if (pulse_speed != pm->pulse_speed || pulse_table != pm->pulse_table) {
  pm->pulse_speed = pulse_speed;
  pm->pulse_table = pulse_table;
  pm->requires_update |= UPDATE_PULSE_MODE;
 }

 powermate_sync_state(pm);

 spin_unlock_irqrestore(&pm->lock, flags);
}
