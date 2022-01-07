
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
typedef int u32 ;
struct smsc9420_pdata {int dummy; } ;
struct net_device {void** dev_addr; } ;


 int ADDRH ;
 int ADDRL ;
 int PROBE ;
 scalar_t__ is_valid_ether_addr (void**) ;
 struct smsc9420_pdata* netdev_priv (struct net_device*) ;
 int random_ether_addr (void**) ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;
 int smsc9420_set_mac_address (struct net_device*) ;
 int smsc_dbg (int ,char*) ;

__attribute__((used)) static void smsc9420_check_mac_address(struct net_device *dev)
{
 struct smsc9420_pdata *pd = netdev_priv(dev);


 if (is_valid_ether_addr(dev->dev_addr)) {
  smsc9420_set_mac_address(dev);
  smsc_dbg(PROBE, "MAC Address is specified by configuration");
 } else {


  u32 mac_high16 = smsc9420_reg_read(pd, ADDRH);
  u32 mac_low32 = smsc9420_reg_read(pd, ADDRL);
  dev->dev_addr[0] = (u8)(mac_low32);
  dev->dev_addr[1] = (u8)(mac_low32 >> 8);
  dev->dev_addr[2] = (u8)(mac_low32 >> 16);
  dev->dev_addr[3] = (u8)(mac_low32 >> 24);
  dev->dev_addr[4] = (u8)(mac_high16);
  dev->dev_addr[5] = (u8)(mac_high16 >> 8);

  if (is_valid_ether_addr(dev->dev_addr)) {

   smsc_dbg(PROBE, "Mac Address is read from EEPROM");
  } else {

   random_ether_addr(dev->dev_addr);
   smsc9420_set_mac_address(dev);
   smsc_dbg(PROBE,
    "MAC Address is set to random_ether_addr");
  }
 }
}
