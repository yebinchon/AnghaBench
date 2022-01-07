
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct saa7134_dev {int board; struct saa7134_card_ir* remote; } ;
struct saa7134_card_ir {int last_gpio; int mask_keycode; int mask_keydown; int mask_keyup; int dev; scalar_t__ polling; } ;




 int SAA7134_GPIO_GPMODE3 ;
 int SAA7134_GPIO_GPRESCAN ;
 int SAA7134_GPIO_GPSTATUS0 ;
 int SAA7134_GPIO_GPSTATUS1 ;
 int dprintk (char*,int,int,int) ;
 int ir_extract_bits (int,int) ;
 int rc_keydown_notimeout (int ,int,int ) ;
 int rc_keyup (int ) ;
 int saa_clearb (int ,int) ;
 int saa_readl (int) ;
 int saa_setb (int ,int) ;

__attribute__((used)) static int build_key(struct saa7134_dev *dev)
{
 struct saa7134_card_ir *ir = dev->remote;
 u32 gpio, data;


 switch (dev->board) {
 case 129:
  saa_setb(SAA7134_GPIO_GPSTATUS1, 0x80);
  saa_clearb(SAA7134_GPIO_GPSTATUS1, 0x80);
  break;
 }

 saa_clearb(SAA7134_GPIO_GPMODE3,SAA7134_GPIO_GPRESCAN);
 saa_setb(SAA7134_GPIO_GPMODE3,SAA7134_GPIO_GPRESCAN);

 gpio = saa_readl(SAA7134_GPIO_GPSTATUS0 >> 2);
 if (ir->polling) {
  if (ir->last_gpio == gpio)
   return 0;
  ir->last_gpio = gpio;
 }

 data = ir_extract_bits(gpio, ir->mask_keycode);
 dprintk("build_key gpio=0x%x mask=0x%x data=%d\n",
  gpio, ir->mask_keycode, data);

 switch (dev->board) {
 case 128:
  if (data == ir->mask_keycode)
   rc_keyup(ir->dev);
  else
   rc_keydown_notimeout(ir->dev, data, 0);
  return 0;
 }

 if (ir->polling) {
  if ((ir->mask_keydown && (0 != (gpio & ir->mask_keydown))) ||
      (ir->mask_keyup && (0 == (gpio & ir->mask_keyup)))) {
   rc_keydown_notimeout(ir->dev, data, 0);
  } else {
   rc_keyup(ir->dev);
  }
 }
 else {
  if ((ir->mask_keydown && (0 != (gpio & ir->mask_keydown))) ||
      (ir->mask_keyup && (0 == (gpio & ir->mask_keyup)))) {
   rc_keydown_notimeout(ir->dev, data, 0);
   rc_keyup(ir->dev);
  }
 }

 return 0;
}
