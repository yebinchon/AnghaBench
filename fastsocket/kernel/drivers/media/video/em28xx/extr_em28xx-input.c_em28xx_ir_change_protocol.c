
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u64 ;
struct rc_dev {struct em28xx_IR* priv; } ;
struct em28xx_IR {int full_code; int get_key; struct em28xx* dev; } ;
struct TYPE_2__ {int xclk; } ;
struct em28xx {int chip_id; TYPE_1__ board; } ;





 int EINVAL ;
 int EM2874_IR_NEC ;
 int EM2874_IR_RC5 ;
 int EM2874_R50_IR_CONFIG ;
 int EM28XX_R0F_XCLK ;
 int EM28XX_XCLK_IR_RC5_MODE ;
 scalar_t__ RC_TYPE_NEC ;
 scalar_t__ RC_TYPE_RC5 ;
 scalar_t__ RC_TYPE_UNKNOWN ;
 int default_polling_getkey ;
 int em2874_polling_getkey ;
 int em28xx_write_reg_bits (struct em28xx*,int ,int ,int ) ;
 int em28xx_write_regs (struct em28xx*,int ,int *,int) ;
 int printk (char*) ;

int em28xx_ir_change_protocol(struct rc_dev *rc_dev, u64 rc_type)
{
 int rc = 0;
 struct em28xx_IR *ir = rc_dev->priv;
 struct em28xx *dev = ir->dev;
 u8 ir_config = EM2874_IR_RC5;



 if (rc_type == RC_TYPE_RC5) {
  dev->board.xclk |= EM28XX_XCLK_IR_RC5_MODE;
  ir->full_code = 1;
 } else if (rc_type == RC_TYPE_NEC) {
  dev->board.xclk &= ~EM28XX_XCLK_IR_RC5_MODE;
  ir_config = EM2874_IR_NEC;
  ir->full_code = 1;
 } else if (rc_type != RC_TYPE_UNKNOWN)
  rc = -EINVAL;

 em28xx_write_reg_bits(dev, EM28XX_R0F_XCLK, dev->board.xclk,
         EM28XX_XCLK_IR_RC5_MODE);


 switch (dev->chip_id) {
 case 130:
 case 128:
  ir->get_key = default_polling_getkey;
  break;
 case 129:
  ir->get_key = em2874_polling_getkey;
  em28xx_write_regs(dev, EM2874_R50_IR_CONFIG, &ir_config, 1);
  break;
 default:
  printk("Unrecognized em28xx chip id: IR not supported\n");
  rc = -EINVAL;
 }

 return rc;
}
