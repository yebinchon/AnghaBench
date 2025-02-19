
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 unsigned short* DefaultPhyParam ;
 int mdio_write (struct net_device*,int,unsigned short,unsigned short) ;

__attribute__((used)) static void ipg_set_phy_default_param(unsigned char rev,
          struct net_device *dev, int phy_address)
{
 unsigned short length;
 unsigned char revision;
 unsigned short *phy_param;
 unsigned short address, value;

 phy_param = &DefaultPhyParam[0];
 length = *phy_param & 0x00FF;
 revision = (unsigned char)((*phy_param) >> 8);
 phy_param++;
 while (length != 0) {
  if (rev == revision) {
   while (length > 1) {
    address = *phy_param;
    value = *(phy_param + 1);
    phy_param += 2;
    mdio_write(dev, phy_address, address, value);
    length -= 4;
   }
   break;
  } else {
   phy_param += length / 2;
   length = *phy_param & 0x00FF;
   revision = (unsigned char)((*phy_param) >> 8);
   phy_param++;
  }
 }
}
