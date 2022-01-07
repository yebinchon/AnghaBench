
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {scalar_t__ last_duplex; int last_carrier; int gpio_orig_setting; int gpio_setting; int using_extphy; int mac_lock; struct phy_device* phy_dev; } ;
struct phy_device {scalar_t__ duplex; } ;
struct net_device {int dummy; } ;


 int GPIO_CFG ;
 int GPIO_CFG_GPIOBUF0_ ;
 int GPIO_CFG_GPIOD0_ ;
 int GPIO_CFG_GPIODIR0_ ;
 int GPIO_CFG_LED1_EN_ ;
 int HW ;
 int MAC_CR ;
 unsigned int MAC_CR_FDPX_ ;
 int SMSC_TRACE (int ,char*) ;
 struct smsc911x_data* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;
 unsigned int smsc911x_mac_read (struct smsc911x_data*,int ) ;
 int smsc911x_mac_write (struct smsc911x_data*,int ,unsigned int) ;
 int smsc911x_phy_update_flowcontrol (struct smsc911x_data*) ;
 int smsc911x_reg_read (struct smsc911x_data*,int ) ;
 int smsc911x_reg_write (struct smsc911x_data*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void smsc911x_phy_adjust_link(struct net_device *dev)
{
 struct smsc911x_data *pdata = netdev_priv(dev);
 struct phy_device *phy_dev = pdata->phy_dev;
 unsigned long flags;
 int carrier;

 if (phy_dev->duplex != pdata->last_duplex) {
  unsigned int mac_cr;
  SMSC_TRACE(HW, "duplex state has changed");

  spin_lock_irqsave(&pdata->mac_lock, flags);
  mac_cr = smsc911x_mac_read(pdata, MAC_CR);
  if (phy_dev->duplex) {
   SMSC_TRACE(HW,
    "configuring for full duplex mode");
   mac_cr |= MAC_CR_FDPX_;
  } else {
   SMSC_TRACE(HW,
    "configuring for half duplex mode");
   mac_cr &= ~MAC_CR_FDPX_;
  }
  smsc911x_mac_write(pdata, MAC_CR, mac_cr);
  spin_unlock_irqrestore(&pdata->mac_lock, flags);

  smsc911x_phy_update_flowcontrol(pdata);
  pdata->last_duplex = phy_dev->duplex;
 }

 carrier = netif_carrier_ok(dev);
 if (carrier != pdata->last_carrier) {
  SMSC_TRACE(HW, "carrier state has changed");
  if (carrier) {
   SMSC_TRACE(HW, "configuring for carrier OK");
   if ((pdata->gpio_orig_setting & GPIO_CFG_LED1_EN_) &&
       (!pdata->using_extphy)) {

    pdata->gpio_setting = pdata->gpio_orig_setting;
    smsc911x_reg_write(pdata, GPIO_CFG,
     pdata->gpio_setting);
   }
  } else {
   SMSC_TRACE(HW, "configuring for no carrier");


   pdata->gpio_setting = smsc911x_reg_read(pdata,
    GPIO_CFG);
   if ((pdata->gpio_setting & GPIO_CFG_LED1_EN_)
       && (!pdata->using_extphy)) {


    pdata->gpio_orig_setting = pdata->gpio_setting;

    pdata->gpio_setting &= ~GPIO_CFG_LED1_EN_;
    pdata->gpio_setting |= (GPIO_CFG_GPIOBUF0_
       | GPIO_CFG_GPIODIR0_
       | GPIO_CFG_GPIOD0_);
    smsc911x_reg_write(pdata, GPIO_CFG,
     pdata->gpio_setting);
   }
  }
  pdata->last_carrier = carrier;
 }
}
