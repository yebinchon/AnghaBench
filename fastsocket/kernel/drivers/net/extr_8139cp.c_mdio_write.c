
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cp_private {int dummy; } ;


 scalar_t__ BasicModeCtrl ;
 int Cfg9346 ;
 int Cfg9346_Lock ;
 int Cfg9346_Unlock ;
 int cpw16 (scalar_t__,int) ;
 int cpw8 (int ,int ) ;
 scalar_t__* mii_2_8139_map ;
 struct cp_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mdio_write(struct net_device *dev, int phy_id, int location,
         int value)
{
 struct cp_private *cp = netdev_priv(dev);

 if (location == 0) {
  cpw8(Cfg9346, Cfg9346_Unlock);
  cpw16(BasicModeCtrl, value);
  cpw8(Cfg9346, Cfg9346_Lock);
 } else if (location < 8 && mii_2_8139_map[location])
  cpw16(mii_2_8139_map[location], value);
}
