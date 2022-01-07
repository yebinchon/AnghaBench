
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int trans_start; int name; } ;


 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_IGNORE ;
 int TLan_FreeLists (struct net_device*) ;
 int TLan_ReadAndClearStats (struct net_device*,int ) ;
 int TLan_ResetAdapter (struct net_device*) ;
 int TLan_ResetLists (struct net_device*) ;
 int jiffies ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void TLan_tx_timeout(struct net_device *dev)
{

 TLAN_DBG( TLAN_DEBUG_GNRL, "%s: Transmit timed out.\n", dev->name);


 TLan_FreeLists( dev );
 TLan_ResetLists( dev );
 TLan_ReadAndClearStats( dev, TLAN_IGNORE );
 TLan_ResetAdapter( dev );
 dev->trans_start = jiffies;
 netif_wake_queue( dev );

}
