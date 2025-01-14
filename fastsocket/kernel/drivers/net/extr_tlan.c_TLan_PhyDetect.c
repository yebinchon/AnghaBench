
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int phyNum; scalar_t__* phy; TYPE_1__* adapter; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ TLanPrivateInfo ;


 int MII_GEN_CTL ;
 int MII_GEN_ID_HI ;
 int MII_GEN_ID_LO ;
 int TLAN_ADAPTER_UNMANAGED_PHY ;
 int TLAN_DBG (int ,char*,scalar_t__,int,int,int) ;
 int TLAN_DEBUG_GNRL ;
 scalar_t__ TLAN_PHY_MAX_ADDR ;
 scalar_t__ TLAN_PHY_NONE ;
 int TLan_MiiReadReg (struct net_device*,scalar_t__,int ,int*) ;
 TYPE_2__* netdev_priv (struct net_device*) ;
 int printk (char*) ;

__attribute__((used)) static void TLan_PhyDetect( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 u16 control;
 u16 hi;
 u16 lo;
 u32 phy;

 if ( priv->adapter->flags & TLAN_ADAPTER_UNMANAGED_PHY ) {
  priv->phyNum = 0xFFFF;
  return;
 }

 TLan_MiiReadReg( dev, TLAN_PHY_MAX_ADDR, MII_GEN_ID_HI, &hi );

 if ( hi != 0xFFFF ) {
  priv->phy[0] = TLAN_PHY_MAX_ADDR;
 } else {
  priv->phy[0] = TLAN_PHY_NONE;
 }

 priv->phy[1] = TLAN_PHY_NONE;
 for ( phy = 0; phy <= TLAN_PHY_MAX_ADDR; phy++ ) {
  TLan_MiiReadReg( dev, phy, MII_GEN_CTL, &control );
  TLan_MiiReadReg( dev, phy, MII_GEN_ID_HI, &hi );
  TLan_MiiReadReg( dev, phy, MII_GEN_ID_LO, &lo );
  if ( ( control != 0xFFFF ) ||
       ( hi != 0xFFFF ) || ( lo != 0xFFFF ) ) {
   TLAN_DBG( TLAN_DEBUG_GNRL,
      "PHY found at %02x %04x %04x %04x\n",
      phy, control, hi, lo );
   if ( ( priv->phy[1] == TLAN_PHY_NONE ) &&
        ( phy != TLAN_PHY_MAX_ADDR ) ) {
    priv->phy[1] = phy;
   }
  }
 }

 if ( priv->phy[1] != TLAN_PHY_NONE ) {
  priv->phyNum = 1;
 } else if ( priv->phy[0] != TLAN_PHY_NONE ) {
  priv->phyNum = 0;
 } else {
  printk( "TLAN:  Cannot initialize device, no PHY was found!\n" );
 }

}
