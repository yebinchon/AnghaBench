
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int name; int irq; scalar_t__ base_addr; } ;
struct TYPE_5__ {int * function; } ;
struct TYPE_4__ {TYPE_3__ timer; scalar_t__ neg_be_verbose; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int TLAN_DBG (int ,char*,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_HC_AD_RST ;
 scalar_t__ TLAN_HOST_CMD ;
 int TLAN_RECORD ;
 int TLan_FreeLists (struct net_device*) ;
 int TLan_ReadAndClearStats (struct net_device*,int ) ;
 int del_timer_sync (TYPE_3__*) ;
 int free_irq (int ,struct net_device*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static int TLan_Close(struct net_device *dev)
{
 TLanPrivateInfo *priv = netdev_priv(dev);

 netif_stop_queue(dev);
 priv->neg_be_verbose = 0;

 TLan_ReadAndClearStats( dev, TLAN_RECORD );
 outl( TLAN_HC_AD_RST, dev->base_addr + TLAN_HOST_CMD );
 if ( priv->timer.function != ((void*)0) ) {
  del_timer_sync( &priv->timer );
  priv->timer.function = ((void*)0);
 }

 free_irq( dev->irq, dev );
 TLan_FreeLists( dev );
 TLAN_DBG( TLAN_DEBUG_GNRL, "Device %s closed.\n", dev->name );

 return 0;

}
