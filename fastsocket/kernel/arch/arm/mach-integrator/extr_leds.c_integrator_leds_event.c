
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int led_event_t ;


 int CM_CTRL_LED ;
 int GREEN_LED ;
 scalar_t__ INTEGRATOR_DBG_ALPHA_OFFSET ;
 int INTEGRATOR_DBG_BASE ;
 scalar_t__ INTEGRATOR_DBG_LEDS_OFFSET ;
 unsigned int IO_ADDRESS (int ) ;
 int RED_LED ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int cm_control (int ,int ) ;





 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int saved_leds ;

__attribute__((used)) static void integrator_leds_event(led_event_t ledevt)
{
 unsigned long flags;
 const unsigned int dbg_base = IO_ADDRESS(INTEGRATOR_DBG_BASE);
 unsigned int update_alpha_leds;


 local_irq_save(flags);
 update_alpha_leds = 0;

 switch(ledevt) {
 case 131:
  cm_control(CM_CTRL_LED, 0);
  break;

 case 132:
  cm_control(CM_CTRL_LED, CM_CTRL_LED);
  break;

 case 128:
  saved_leds ^= GREEN_LED;
  update_alpha_leds = 1;
  break;

 case 129:
  saved_leds |= RED_LED;
  update_alpha_leds = 1;
  break;

 case 130:
  saved_leds &= ~RED_LED;
  update_alpha_leds = 1;
  break;

 default:
  break;
 }

 if (update_alpha_leds) {
  while (__raw_readl(dbg_base + INTEGRATOR_DBG_ALPHA_OFFSET) & 1);
  __raw_writel(saved_leds, dbg_base + INTEGRATOR_DBG_LEDS_OFFSET);
 }
 local_irq_restore(flags);
}
