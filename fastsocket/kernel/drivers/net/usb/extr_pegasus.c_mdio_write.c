
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int pegasus_t ;


 scalar_t__ netdev_priv (struct net_device*) ;
 int write_mii_word (int *,int,int,int) ;

__attribute__((used)) static void mdio_write(struct net_device *dev, int phy_id, int loc, int val)
{
 pegasus_t *pegasus = (pegasus_t *) netdev_priv(dev);

 write_mii_word(pegasus, phy_id, loc, val);
}
