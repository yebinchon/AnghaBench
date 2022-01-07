
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {struct saa7134_card_ir* remote; } ;
struct saa7134_card_ir {int mask_keydown; int active; int timer; int dev; } ;


 int IR_PULSE ;
 int IR_SPACE ;
 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int ir_raw_event_store_edge (int ,int ) ;
 unsigned long jiffies ;
 unsigned long jiffies_to_msecs (int) ;
 int mod_timer (int *,unsigned long) ;
 int saa_clearb (int ,int ) ;
 int saa_readl (int) ;
 int saa_setb (int ,int ) ;

__attribute__((used)) static int saa7134_raw_decode_irq(struct saa7134_dev *dev)
{
 struct saa7134_card_ir *ir = dev->remote;
 unsigned long timeout;
 int space;


 saa_clearb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3, SAA7134_GPIO_GPRESCAN);
 space = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2) & ir->mask_keydown;
 ir_raw_event_store_edge(dev->remote->dev, space ? IR_SPACE : IR_PULSE);






 if (!ir->active) {
  timeout = jiffies + jiffies_to_msecs(15);
  mod_timer(&ir->timer, timeout);
  ir->active = 1;
 }

 return 1;
}
