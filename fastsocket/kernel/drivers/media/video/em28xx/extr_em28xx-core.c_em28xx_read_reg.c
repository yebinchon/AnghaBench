
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct em28xx {int dummy; } ;


 int USB_REQ_GET_STATUS ;
 int em28xx_read_reg_req (struct em28xx*,int ,int ) ;

int em28xx_read_reg(struct em28xx *dev, u16 reg)
{
 return em28xx_read_reg_req(dev, USB_REQ_GET_STATUS, reg);
}
