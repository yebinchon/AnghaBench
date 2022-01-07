
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int phy; } ;
typedef TYPE_1__ pegasus_t ;


 int BMSR_LSTATUS ;
 int MII_BMSR ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 scalar_t__ read_mii_word (TYPE_1__*,int ,int ,int*) ;

__attribute__((used)) static void set_carrier(struct net_device *net)
{
 pegasus_t *pegasus = netdev_priv(net);
 u16 tmp;

 if (read_mii_word(pegasus, pegasus->phy, MII_BMSR, &tmp))
  return;

 if (tmp & BMSR_LSTATUS)
  netif_carrier_on(net);
 else
  netif_carrier_off(net);
}
