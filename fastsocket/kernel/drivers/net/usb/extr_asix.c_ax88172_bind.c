
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int phy_id_mask; int reg_num_mask; int phy_id; int (* mdio_write ) (TYPE_3__*,int ,int ,int) ;int mdio_read; TYPE_3__* dev; } ;
struct usbnet {int driver_priv; TYPE_2__ mii; TYPE_3__* net; int data; TYPE_1__* driver_info; } ;
struct usb_interface {int dummy; } ;
struct asix_data {int eeprom_len; } ;
struct asix_common_private {int dummy; } ;
struct TYPE_6__ {int * ethtool_ops; int * netdev_ops; int dev_addr; } ;
struct TYPE_4__ {unsigned long data; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_CAP ;
 int AX88172_CMD_READ_NODE_ID ;
 int AX88172_EEPROM_LEN ;
 int AX_CMD_WRITE_GPIOS ;
 int BMCR_RESET ;
 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int asix_get_phy_addr (struct usbnet*) ;
 int asix_mdio_read ;
 int asix_mdio_write (TYPE_3__*,int ,int ,int) ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int *) ;
 int asix_write_cmd (struct usbnet*,int ,unsigned long,int ,int ,int *) ;
 int asix_write_rx_ctl (struct usbnet*,int) ;
 int ax88172_ethtool_ops ;
 int ax88172_netdev_ops ;
 int dbg (char*,int) ;
 int kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;
 int mii_nway_restart (TYPE_2__*) ;
 int msleep (int) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int ax88172_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int ret = 0;
 u8 buf[ETH_ALEN];
 int i;
 unsigned long gpio_bits = dev->driver_info->data;
 struct asix_data *data = (struct asix_data *)&dev->data;

 data->eeprom_len = AX88172_EEPROM_LEN;

 usbnet_get_endpoints(dev,intf);


 for (i = 2; i >= 0; i--) {
  if ((ret = asix_write_cmd(dev, AX_CMD_WRITE_GPIOS,
     (gpio_bits >> (i * 8)) & 0xff, 0, 0,
     ((void*)0))) < 0)
   goto out;
  msleep(5);
 }

 if ((ret = asix_write_rx_ctl(dev, 0x80)) < 0)
  goto out;


 if ((ret = asix_read_cmd(dev, AX88172_CMD_READ_NODE_ID,
    0, 0, ETH_ALEN, buf)) < 0) {
  dbg("read AX_CMD_READ_NODE_ID failed: %d", ret);
  goto out;
 }
 memcpy(dev->net->dev_addr, buf, ETH_ALEN);


 dev->mii.dev = dev->net;
 dev->mii.mdio_read = asix_mdio_read;
 dev->mii.mdio_write = asix_mdio_write;
 dev->mii.phy_id_mask = 0x3f;
 dev->mii.reg_num_mask = 0x1f;
 dev->mii.phy_id = asix_get_phy_addr(dev);

 dev->net->netdev_ops = &ax88172_netdev_ops;
 dev->net->ethtool_ops = &ax88172_ethtool_ops;

 asix_mdio_write(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);
 asix_mdio_write(dev->net, dev->mii.phy_id, MII_ADVERTISE,
  ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP);
 mii_nway_restart(&dev->mii);

 dev->driver_priv = kzalloc(sizeof(struct asix_common_private), GFP_KERNEL);
 if (!dev->driver_priv)
  return -ENOMEM;

 return 0;

out:
 return ret;
}
