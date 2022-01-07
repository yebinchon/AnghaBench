
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct em28xx {scalar_t__ reg_gpo_num; char reg_gpo; scalar_t__ reg_gpio_num; char reg_gpio; } ;


 int USB_REQ_GET_STATUS ;
 int em28xx_write_regs_req (struct em28xx*,int ,scalar_t__,char*,int) ;

int em28xx_write_regs(struct em28xx *dev, u16 reg, char *buf, int len)
{
 int rc;

 rc = em28xx_write_regs_req(dev, USB_REQ_GET_STATUS, reg, buf, len);






 if (rc >= 0) {
  if (reg == dev->reg_gpo_num)
   dev->reg_gpo = buf[0];
  else if (reg == dev->reg_gpio_num)
   dev->reg_gpio = buf[0];
 }

 return rc;
}
