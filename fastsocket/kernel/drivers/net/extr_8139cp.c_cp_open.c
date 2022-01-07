
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;
struct cp_private {int napi; int mii_if; } ;


 int IRQF_SHARED ;
 int cp_alloc_rings (struct cp_private*) ;
 int cp_enable_irq (struct cp_private*) ;
 int cp_free_rings (struct cp_private*) ;
 int cp_init_hw (struct cp_private*) ;
 int cp_interrupt ;
 int cp_stop_hw (struct cp_private*) ;
 int mii_check_media (int *,int ,int) ;
 int napi_disable (int *) ;
 int napi_enable (int *) ;
 struct cp_private* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct cp_private*) ;
 int netif_msg_link (struct cp_private*) ;
 int netif_start_queue (struct net_device*) ;
 int pr_debug (char*,int ) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;

__attribute__((used)) static int cp_open (struct net_device *dev)
{
 struct cp_private *cp = netdev_priv(dev);
 int rc;

 if (netif_msg_ifup(cp))
  pr_debug("%s: enabling interface\n", dev->name);

 rc = cp_alloc_rings(cp);
 if (rc)
  return rc;

 napi_enable(&cp->napi);

 cp_init_hw(cp);

 rc = request_irq(dev->irq, cp_interrupt, IRQF_SHARED, dev->name, dev);
 if (rc)
  goto err_out_hw;

 cp_enable_irq(cp);

 netif_carrier_off(dev);
 mii_check_media(&cp->mii_if, netif_msg_link(cp), 1);
 netif_start_queue(dev);

 return 0;

err_out_hw:
 napi_disable(&cp->napi);
 cp_stop_hw(cp);
 cp_free_rings(cp);
 return rc;
}
