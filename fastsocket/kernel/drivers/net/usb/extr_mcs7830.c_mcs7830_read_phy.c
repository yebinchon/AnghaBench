
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int phy_mutex; TYPE_1__* udev; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int HIF_REG_PHY_CMD1 ;
 int HIF_REG_PHY_CMD1_PHYADDR ;
 int HIF_REG_PHY_CMD1_READ ;
 int HIF_REG_PHY_CMD2_PEND_FLAG_BIT ;
 int HIF_REG_PHY_CMD2_READY_FLAG_BIT ;
 int HIF_REG_PHY_DATA ;
 int dev_dbg (int *,char*,int,int,int) ;
 int le16_to_cpu (int) ;
 int mcs7830_get_reg (struct usbnet*,int ,int,int*) ;
 int mcs7830_set_reg (struct usbnet*,int ,int,int*) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mcs7830_read_phy(struct usbnet *dev, u8 index)
{
 int ret;
 int i;
 __le16 val;

 u8 cmd[2] = {
  HIF_REG_PHY_CMD1_READ | HIF_REG_PHY_CMD1_PHYADDR,
  HIF_REG_PHY_CMD2_PEND_FLAG_BIT | index,
 };

 mutex_lock(&dev->phy_mutex);

 ret = mcs7830_set_reg(dev, HIF_REG_PHY_CMD1, 2, cmd);
 if (ret < 0)
  goto out;


 for (i = 0; i < 10; i++) {
  ret = mcs7830_get_reg(dev, HIF_REG_PHY_CMD1, 2, cmd);
  if ((ret < 0) || (cmd[1] & HIF_REG_PHY_CMD2_READY_FLAG_BIT))
   break;
  ret = -EIO;
  msleep(1);
 }
 if (ret < 0)
  goto out;


 ret = mcs7830_get_reg(dev, HIF_REG_PHY_DATA, 2, &val);
 if (ret < 0)
  goto out;
 ret = le16_to_cpu(val);
 dev_dbg(&dev->udev->dev, "read PHY reg %02x: %04x (%d tries)\n",
  index, val, i);
out:
 mutex_unlock(&dev->phy_mutex);
 return ret;
}
