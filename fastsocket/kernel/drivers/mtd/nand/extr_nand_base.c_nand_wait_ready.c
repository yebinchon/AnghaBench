
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {scalar_t__ (* dev_ready ) (struct mtd_info*) ;} ;
struct mtd_info {struct nand_chip* priv; } ;


 int LED_FULL ;
 int LED_OFF ;
 int jiffies ;
 int led_trigger_event (int ,int ) ;
 int nand_led_trigger ;
 scalar_t__ stub1 (struct mtd_info*) ;
 scalar_t__ time_before (int,unsigned long) ;
 int touch_softlockup_watchdog () ;

void nand_wait_ready(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd->priv;
 unsigned long timeo = jiffies + 2;

 led_trigger_event(nand_led_trigger, LED_FULL);

 do {
  if (chip->dev_ready(mtd))
   break;
  touch_softlockup_watchdog();
 } while (time_before(jiffies, timeo));
 led_trigger_event(nand_led_trigger, LED_OFF);
}
