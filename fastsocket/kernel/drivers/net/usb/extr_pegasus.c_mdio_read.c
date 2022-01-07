
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct net_device {int dummy; } ;
typedef int pegasus_t ;


 scalar_t__ netdev_priv (struct net_device*) ;
 int read_mii_word (int *,int,int,scalar_t__*) ;

__attribute__((used)) static int mdio_read(struct net_device *dev, int phy_id, int loc)
{
 pegasus_t *pegasus = (pegasus_t *) netdev_priv(dev);
 u16 res;

 read_mii_word(pegasus, phy_id, loc, &res);
 return (int)res;
}
