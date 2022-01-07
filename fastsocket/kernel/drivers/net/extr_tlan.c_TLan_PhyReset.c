
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int base_addr; int name; } ;
struct TYPE_3__ {int* phy; size_t phyNum; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int HZ ;
 int MII_GC_LOOPBK ;
 int MII_GC_RESET ;
 int MII_GEN_CTL ;
 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_TIMER_PHY_START_LINK ;
 int TLan_MiiReadReg (struct net_device*,int,int ,int*) ;
 int TLan_MiiSync (int ) ;
 int TLan_MiiWriteReg (struct net_device*,int,int ,int) ;
 int TLan_SetTimer (struct net_device*,int,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static void TLan_PhyReset( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 u16 phy;
 u16 value;

 phy = priv->phy[priv->phyNum];

 TLAN_DBG( TLAN_DEBUG_GNRL, "%s: Reseting PHY.\n", dev->name );
 TLan_MiiSync( dev->base_addr );
 value = MII_GC_LOOPBK | MII_GC_RESET;
 TLan_MiiWriteReg( dev, phy, MII_GEN_CTL, value );
 TLan_MiiReadReg( dev, phy, MII_GEN_CTL, &value );
 while ( value & MII_GC_RESET ) {
  TLan_MiiReadReg( dev, phy, MII_GEN_CTL, &value );
 }





 TLan_SetTimer( dev, (HZ/20), TLAN_TIMER_PHY_START_LINK );

}
