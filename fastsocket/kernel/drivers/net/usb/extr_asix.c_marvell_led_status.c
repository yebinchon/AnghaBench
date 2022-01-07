
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct usbnet {TYPE_1__ mii; int net; } ;


 int MARVELL_LED_MANUAL ;


 int asix_mdio_read (int ,int ,int ) ;
 int asix_mdio_write (int ,int ,int ,int) ;
 int devdbg (struct usbnet*,char*,int) ;

__attribute__((used)) static int marvell_led_status(struct usbnet *dev, u16 speed)
{
 u16 reg = asix_mdio_read(dev->net, dev->mii.phy_id, MARVELL_LED_MANUAL);

 devdbg(dev, "marvell_led_status() read 0x%04x", reg);


 reg &= 0xfc0f;

 switch (speed) {
  case 128:
   reg |= 0x03e0;
   break;
  case 129:
   reg |= 0x03b0;
   break;
  default:
   reg |= 0x02f0;
 }

 devdbg(dev, "marvell_led_status() writing 0x%04x", reg);
 asix_mdio_write(dev->net, dev->mii.phy_id, MARVELL_LED_MANUAL, reg);

 return 0;
}
