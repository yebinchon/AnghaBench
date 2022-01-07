
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_5__ {int phy_id_mask; int reg_num_mask; int phy_id; int (* mdio_write ) (TYPE_3__*,int,int ,int) ;int mdio_read; TYPE_3__* dev; } ;
struct usbnet {int rx_urb_size; int driver_priv; TYPE_1__* driver_info; TYPE_2__ mii; TYPE_3__* net; int data; } ;
struct usb_interface {int dummy; } ;
struct asix_data {int eeprom_len; } ;
struct asix_common_private {int dummy; } ;
struct TYPE_6__ {int * ethtool_ops; int * netdev_ops; int dev_addr; } ;
struct TYPE_4__ {int flags; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int AX88772_EEPROM_LEN ;
 int AX88772_IPG0_DEFAULT ;
 int AX88772_IPG1_DEFAULT ;
 int AX88772_IPG2_DEFAULT ;
 int AX88772_MEDIUM_DEFAULT ;
 int AX_CMD_READ_NODE_ID ;
 int AX_CMD_SW_PHY_SELECT ;
 int AX_CMD_WRITE_IPG0 ;
 int AX_DEFAULT_RX_CTL ;
 int AX_GPIO_GPO2EN ;
 int AX_GPIO_GPO_2 ;
 int AX_GPIO_RSE ;
 int AX_SWRESET_CLEAR ;
 int AX_SWRESET_IPPD ;
 int AX_SWRESET_IPRL ;
 int AX_SWRESET_PRL ;
 int AX_SWRESET_PRTE ;
 int BMCR_RESET ;
 int ENOMEM ;
 int ETH_ALEN ;
 int FLAG_FRAMING_AX ;
 int GFP_KERNEL ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int asix_get_phy_addr (struct usbnet*) ;
 int asix_get_phyid (struct usbnet*) ;
 int asix_mdio_read ;
 int asix_mdio_write (TYPE_3__*,int,int ,int) ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int *) ;
 int asix_read_medium_status (struct usbnet*) ;
 int asix_read_rx_ctl (struct usbnet*) ;
 int asix_sw_reset (struct usbnet*,int) ;
 int asix_write_cmd (struct usbnet*,int ,int,int ,int ,int *) ;
 int asix_write_gpio (struct usbnet*,int,int) ;
 int asix_write_medium_mode (struct usbnet*,int ) ;
 int asix_write_rx_ctl (struct usbnet*,int) ;
 int ax88772_ethtool_ops ;
 int ax88772_netdev_ops ;
 int dbg (char*,int) ;
 int kzalloc (int,int ) ;
 int memcpy (int ,int *,int) ;
 int mii_nway_restart (TYPE_2__*) ;
 int msleep (int) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int ax88772_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int ret, embd_phy;
 u16 rx_ctl;
 struct asix_data *data = (struct asix_data *)&dev->data;
 u8 buf[ETH_ALEN];
 u32 phyid;

 data->eeprom_len = AX88772_EEPROM_LEN;

 usbnet_get_endpoints(dev,intf);

 if ((ret = asix_write_gpio(dev,
   AX_GPIO_RSE | AX_GPIO_GPO_2 | AX_GPIO_GPO2EN, 5)) < 0)
  goto out;


 embd_phy = ((asix_get_phy_addr(dev) & 0x1f) == 0x10 ? 1 : 0);
 if ((ret = asix_write_cmd(dev, AX_CMD_SW_PHY_SELECT,
    embd_phy, 0, 0, ((void*)0))) < 0) {
  dbg("Select PHY #1 failed: %d", ret);
  goto out;
 }

 if ((ret = asix_sw_reset(dev, AX_SWRESET_IPPD | AX_SWRESET_PRL)) < 0)
  goto out;

 msleep(150);
 if ((ret = asix_sw_reset(dev, AX_SWRESET_CLEAR)) < 0)
  goto out;

 msleep(150);
 if (embd_phy) {
  if ((ret = asix_sw_reset(dev, AX_SWRESET_IPRL)) < 0)
   goto out;
 }
 else {
  if ((ret = asix_sw_reset(dev, AX_SWRESET_PRTE)) < 0)
   goto out;
 }

 msleep(150);
 rx_ctl = asix_read_rx_ctl(dev);
 dbg("RX_CTL is 0x%04x after software reset", rx_ctl);
 if ((ret = asix_write_rx_ctl(dev, 0x0000)) < 0)
  goto out;

 rx_ctl = asix_read_rx_ctl(dev);
 dbg("RX_CTL is 0x%04x setting to 0x0000", rx_ctl);


 if ((ret = asix_read_cmd(dev, AX_CMD_READ_NODE_ID,
    0, 0, ETH_ALEN, buf)) < 0) {
  dbg("Failed to read MAC address: %d", ret);
  goto out;
 }
 memcpy(dev->net->dev_addr, buf, ETH_ALEN);


 dev->mii.dev = dev->net;
 dev->mii.mdio_read = asix_mdio_read;
 dev->mii.mdio_write = asix_mdio_write;
 dev->mii.phy_id_mask = 0x1f;
 dev->mii.reg_num_mask = 0x1f;
 dev->mii.phy_id = asix_get_phy_addr(dev);

 phyid = asix_get_phyid(dev);
 dbg("PHYID=0x%08x", phyid);

 if ((ret = asix_sw_reset(dev, AX_SWRESET_PRL)) < 0)
  goto out;

 msleep(150);

 if ((ret = asix_sw_reset(dev, AX_SWRESET_IPRL | AX_SWRESET_PRL)) < 0)
  goto out;

 msleep(150);

 dev->net->netdev_ops = &ax88772_netdev_ops;
 dev->net->ethtool_ops = &ax88772_ethtool_ops;

 asix_mdio_write(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);
 asix_mdio_write(dev->net, dev->mii.phy_id, MII_ADVERTISE,
   ADVERTISE_ALL | ADVERTISE_CSMA);
 mii_nway_restart(&dev->mii);

 if ((ret = asix_write_medium_mode(dev, AX88772_MEDIUM_DEFAULT)) < 0)
  goto out;

 if ((ret = asix_write_cmd(dev, AX_CMD_WRITE_IPG0,
    AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
    AX88772_IPG2_DEFAULT, 0, ((void*)0))) < 0) {
  dbg("Write IPG,IPG1,IPG2 failed: %d", ret);
  goto out;
 }


 if ((ret = asix_write_rx_ctl(dev, AX_DEFAULT_RX_CTL)) < 0)
  goto out;

 rx_ctl = asix_read_rx_ctl(dev);
 dbg("RX_CTL is 0x%04x after all initializations", rx_ctl);

 rx_ctl = asix_read_medium_status(dev);
 dbg("Medium Status is 0x%04x after all initializations", rx_ctl);


 if (dev->driver_info->flags & FLAG_FRAMING_AX) {


  dev->rx_urb_size = 2048;
 }

 dev->driver_priv = kzalloc(sizeof(struct asix_common_private), GFP_KERNEL);
 if (!dev->driver_priv)
  return -ENOMEM;

 return 0;

out:
 return ret;
}
