
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc911x_data {struct phy_device* phy_dev; } ;
struct phy_device {int addr; int bus; } ;


 unsigned int BMCR_RESET ;
 int BUG_ON (int) ;
 int EIO ;
 int HW ;
 int MII_BMCR ;
 int SMSC_TRACE (int ,char*) ;
 int SMSC_WARNING (int ,char*) ;
 int msleep (int) ;
 unsigned int smsc911x_mii_read (int ,int ,int ) ;
 int smsc911x_mii_write (int ,int ,int ,unsigned int) ;

__attribute__((used)) static int smsc911x_phy_reset(struct smsc911x_data *pdata)
{
 struct phy_device *phy_dev = pdata->phy_dev;
 unsigned int temp;
 unsigned int i = 100000;

 BUG_ON(!phy_dev);
 BUG_ON(!phy_dev->bus);

 SMSC_TRACE(HW, "Performing PHY BCR Reset");
 smsc911x_mii_write(phy_dev->bus, phy_dev->addr, MII_BMCR, BMCR_RESET);
 do {
  msleep(1);
  temp = smsc911x_mii_read(phy_dev->bus, phy_dev->addr,
   MII_BMCR);
 } while ((i--) && (temp & BMCR_RESET));

 if (temp & BMCR_RESET) {
  SMSC_WARNING(HW, "PHY reset failed to complete.");
  return -EIO;
 }



 msleep(1);

 return 0;
}
