
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int led_event_t ;


 int PDDR ;
 int clps_readb (int ) ;
 int clps_writeb (int,int ) ;



 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void p720t_leds_event(led_event_t ledevt)
{
 unsigned long flags;
 u32 pddr;

 local_irq_save(flags);
 switch(ledevt) {
 case 129:
  break;

 case 130:
  break;

 case 128:
  pddr = clps_readb(PDDR);
  clps_writeb(pddr ^ 1, PDDR);
  break;

 default:
  break;
 }

 local_irq_restore(flags);
}
