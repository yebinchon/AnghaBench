
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int HIF_REG_22 ;
 int mcs7830_get_reg (struct usbnet*,int ,int,int *) ;

__attribute__((used)) static int mcs7830_get_rev(struct usbnet *dev)
{
 u8 dummy[2];
 int ret;
 ret = mcs7830_get_reg(dev, HIF_REG_22, 2, dummy);
 if (ret > 0)
  return 2;
 return 1;
}
