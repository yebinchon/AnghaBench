
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct usbnet {TYPE_1__* net; } ;
struct TYPE_2__ {int* dev_addr; } ;


 int ADDRH ;
 int ADDRL ;
 int devwarn (struct usbnet*,char*,int) ;
 int smsc95xx_write_reg (struct usbnet*,int ,int) ;

__attribute__((used)) static int smsc95xx_set_mac_address(struct usbnet *dev)
{
 u32 addr_lo = dev->net->dev_addr[0] | dev->net->dev_addr[1] << 8 |
  dev->net->dev_addr[2] << 16 | dev->net->dev_addr[3] << 24;
 u32 addr_hi = dev->net->dev_addr[4] | dev->net->dev_addr[5] << 8;
 int ret;

 ret = smsc95xx_write_reg(dev, ADDRL, addr_lo);
 if (ret < 0) {
  devwarn(dev, "Failed to write ADDRL: %d", ret);
  return ret;
 }

 ret = smsc95xx_write_reg(dev, ADDRH, addr_hi);
 if (ret < 0) {
  devwarn(dev, "Failed to write ADDRH: %d", ret);
  return ret;
 }

 return 0;
}
