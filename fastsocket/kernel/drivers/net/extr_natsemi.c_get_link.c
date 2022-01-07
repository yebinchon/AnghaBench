
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 int mdio_read (struct net_device*,int ) ;

__attribute__((used)) static u32 get_link(struct net_device *dev)
{

 mdio_read(dev, MII_BMSR);
 return (mdio_read(dev, MII_BMSR)&BMSR_LSTATUS) ? 1:0;
}
