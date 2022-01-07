
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int base_addr; int name; } ;
struct TYPE_5__ {scalar_t__* phy; size_t phyNum; TYPE_1__* adapter; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ TLanPrivateInfo ;


 int HZ ;
 int MII_GC_ISOLATE ;
 int MII_GC_LOOPBK ;
 int MII_GC_PDOWN ;
 int MII_GEN_CTL ;
 int TLAN_ADAPTER_USE_INTERN_10 ;
 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 scalar_t__ TLAN_PHY_NONE ;
 int TLAN_TIMER_PHY_PUP ;
 int TLan_MiiSync (int ) ;
 int TLan_MiiWriteReg (struct net_device*,scalar_t__,int ,int) ;
 int TLan_SetTimer (struct net_device*,int,int ) ;
 TYPE_2__* netdev_priv (struct net_device*) ;

__attribute__((used)) static void TLan_PhyPowerDown( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 u16 value;

 TLAN_DBG( TLAN_DEBUG_GNRL, "%s: Powering down PHY(s).\n", dev->name );
 value = MII_GC_PDOWN | MII_GC_LOOPBK | MII_GC_ISOLATE;
 TLan_MiiSync( dev->base_addr );
 TLan_MiiWriteReg( dev, priv->phy[priv->phyNum], MII_GEN_CTL, value );
 if ( ( priv->phyNum == 0 ) &&
      ( priv->phy[1] != TLAN_PHY_NONE ) &&
      ( ! ( priv->adapter->flags & TLAN_ADAPTER_USE_INTERN_10 ) ) ) {
  TLan_MiiSync( dev->base_addr );
  TLan_MiiWriteReg( dev, priv->phy[1], MII_GEN_CTL, value );
 }





 TLan_SetTimer( dev, (HZ/20), TLAN_TIMER_PHY_PUP );

}
