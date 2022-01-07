
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int gpcs_address; } ;
struct emac_instance {struct emac_instance* mdio_instance; TYPE_1__ phy; } ;


 int __emac_mdio_write (struct emac_instance*,int ,int ,int ) ;
 struct emac_instance* netdev_priv (struct net_device*) ;

__attribute__((used)) static void emac_mdio_write(struct net_device *ndev, int id, int reg, int val)
{
 struct emac_instance *dev = netdev_priv(ndev);

 __emac_mdio_write((dev->mdio_instance &&
      dev->phy.gpcs_address != id) ?
      dev->mdio_instance : dev,
     (u8) id, (u8) reg, (u16) val);
}
