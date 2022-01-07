
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u16 ;
struct usb_device {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_7__ {size_t dev_index; int eth_regs; int phy; } ;
typedef TYPE_1__ pegasus_t ;
typedef int data ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_8__ {scalar_t__ vendor; } ;


 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int EthCtrl0 ;
 int MII_LPA ;
 scalar_t__ VENDOR_DLINK ;
 scalar_t__ VENDOR_LINKSYS ;
 scalar_t__ VENDOR_LINKSYS2 ;
 int loopback ;
 int memcpy (int ,int*,int) ;
 scalar_t__ mii_mode ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int read_mii_word (TYPE_1__*,int ,int,int*) ;
 int set_registers (TYPE_1__*,int ,int,int*) ;
 TYPE_3__* usb_dev_id ;
 int write_mii_word (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static int enable_net_traffic(struct net_device *dev, struct usb_device *usb)
{
 __u16 linkpart;
 __u8 data[4];
 pegasus_t *pegasus = netdev_priv(dev);
 int ret;

 read_mii_word(pegasus, pegasus->phy, MII_LPA, &linkpart);
 data[0] = 0xc9;
 data[1] = 0;
 if (linkpart & (ADVERTISE_100FULL | ADVERTISE_10FULL))
  data[1] |= 0x20;
 if (linkpart & (ADVERTISE_100FULL | ADVERTISE_100HALF))
  data[1] |= 0x10;
 if (mii_mode)
  data[1] = 0;
 data[2] = (loopback & 1) ? 0x09 : 0x01;

 memcpy(pegasus->eth_regs, data, sizeof (data));
 ret = set_registers(pegasus, EthCtrl0, 3, data);

 if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
     usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS2 ||
     usb_dev_id[pegasus->dev_index].vendor == VENDOR_DLINK) {
  u16 auxmode;
  read_mii_word(pegasus, 0, 0x1b, &auxmode);
  write_mii_word(pegasus, 0, 0x1b, auxmode | 4);
 }

 return ret;
}
