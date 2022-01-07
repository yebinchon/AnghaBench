
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device_stats {int dummy; } ;
struct net_device {struct net_device_stats stats; int base_addr; int name; } ;
struct TYPE_3__ {scalar_t__ txList; scalar_t__ rxList; int txBusyCount; int rxEocCount; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int TLAN_DBG (int ,char*,int ,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_DEBUG_LIST ;
 int TLAN_DEBUG_RX ;
 int TLAN_DEBUG_TX ;
 int TLAN_NUM_RX_LISTS ;
 int TLAN_NUM_TX_LISTS ;
 int TLAN_RECORD ;
 int TLan_PhyPrint (struct net_device*) ;
 int TLan_PrintDio (int ) ;
 int TLan_PrintList (scalar_t__,char*,int) ;
 int TLan_ReadAndClearStats (struct net_device*,int ) ;
 int debug ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct net_device_stats *TLan_GetStats( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 int i;


 TLan_ReadAndClearStats( dev, TLAN_RECORD );

 TLAN_DBG( TLAN_DEBUG_RX, "RECEIVE:  %s EOC count = %d\n", dev->name,
    priv->rxEocCount );
 TLAN_DBG( TLAN_DEBUG_TX, "TRANSMIT:  %s Busy count = %d\n", dev->name,
    priv->txBusyCount );
 if ( debug & TLAN_DEBUG_GNRL ) {
  TLan_PrintDio( dev->base_addr );
  TLan_PhyPrint( dev );
 }
 if ( debug & TLAN_DEBUG_LIST ) {
  for ( i = 0; i < TLAN_NUM_RX_LISTS; i++ )
   TLan_PrintList( priv->rxList + i, "RX", i );
  for ( i = 0; i < TLAN_NUM_TX_LISTS; i++ )
   TLan_PrintList( priv->txList + i, "TX", i );
 }

 return &dev->stats;

}
