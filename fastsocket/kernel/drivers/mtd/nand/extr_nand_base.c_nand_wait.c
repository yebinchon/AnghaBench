
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int state; int options; int (* read_byte ) (struct mtd_info*) ;scalar_t__ (* dev_ready ) (struct mtd_info*) ;int (* cmdfunc ) (struct mtd_info*,int ,int,int) ;} ;
struct mtd_info {int dummy; } ;


 int FL_ERASING ;
 int HZ ;
 int LED_FULL ;
 int LED_OFF ;
 int NAND_CMD_STATUS ;
 int NAND_CMD_STATUS_MULTI ;
 int NAND_IS_AND ;
 int NAND_STATUS_READY ;
 int cond_resched () ;
 unsigned long jiffies ;
 int led_trigger_event (int ,int ) ;
 int nand_led_trigger ;
 int ndelay (int) ;
 int stub1 (struct mtd_info*,int ,int,int) ;
 int stub2 (struct mtd_info*,int ,int,int) ;
 scalar_t__ stub3 (struct mtd_info*) ;
 int stub4 (struct mtd_info*) ;
 int stub5 (struct mtd_info*) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int nand_wait(struct mtd_info *mtd, struct nand_chip *chip)
{

 unsigned long timeo = jiffies;
 int status, state = chip->state;

 if (state == FL_ERASING)
  timeo += (HZ * 400) / 1000;
 else
  timeo += (HZ * 20) / 1000;

 led_trigger_event(nand_led_trigger, LED_FULL);



 ndelay(100);

 if ((state == FL_ERASING) && (chip->options & NAND_IS_AND))
  chip->cmdfunc(mtd, NAND_CMD_STATUS_MULTI, -1, -1);
 else
  chip->cmdfunc(mtd, NAND_CMD_STATUS, -1, -1);

 while (time_before(jiffies, timeo)) {
  if (chip->dev_ready) {
   if (chip->dev_ready(mtd))
    break;
  } else {
   if (chip->read_byte(mtd) & NAND_STATUS_READY)
    break;
  }
  cond_resched();
 }
 led_trigger_event(nand_led_trigger, LED_OFF);

 status = (int)chip->read_byte(mtd);
 return status;
}
