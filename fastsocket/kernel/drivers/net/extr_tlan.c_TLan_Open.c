
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int name; int irq; int base_addr; } ;
struct TYPE_3__ {int tlanRev; int timer; } ;
typedef TYPE_1__ TLanPrivateInfo ;


 int IRQF_SHARED ;
 int TLAN_DBG (int ,char*,int ,int ) ;
 int TLAN_DEBUG_GNRL ;
 int TLAN_DEF_REVISION ;
 int TLAN_IGNORE ;
 int TLan_DioRead8 (int ,int ) ;
 int TLan_HandleInterrupt ;
 int TLan_ReadAndClearStats (struct net_device*,int ) ;
 int TLan_ResetAdapter (struct net_device*) ;
 int TLan_ResetLists (struct net_device*) ;
 int init_timer (int *) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int pr_err (char*,int ,int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int TLan_Open( struct net_device *dev )
{
 TLanPrivateInfo *priv = netdev_priv(dev);
 int err;

 priv->tlanRev = TLan_DioRead8( dev->base_addr, TLAN_DEF_REVISION );
 err = request_irq( dev->irq, TLan_HandleInterrupt, IRQF_SHARED,
      dev->name, dev );

 if ( err ) {
  pr_err("TLAN:  Cannot open %s because IRQ %d is already in use.\n",
         dev->name, dev->irq );
  return err;
 }

 init_timer(&priv->timer);
 netif_start_queue(dev);




 TLan_ResetLists( dev );
 TLan_ReadAndClearStats( dev, TLAN_IGNORE );
 TLan_ResetAdapter( dev );

 TLAN_DBG( TLAN_DEBUG_GNRL, "%s: Opened.  TLAN Chip Rev: %x\n",
    dev->name, priv->tlanRev );

 return 0;

}
