
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int HIF_REG_ETHERNET_ADDR ;
 int mcs7830_get_reg (struct usbnet*,int ,int ,int ) ;

__attribute__((used)) static int mcs7830_get_address(struct usbnet *dev)
{
 int ret;
 ret = mcs7830_get_reg(dev, HIF_REG_ETHERNET_ADDR, ETH_ALEN,
       dev->net->dev_addr);
 if (ret < 0)
  return ret;
 return 0;
}
