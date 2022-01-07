
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int old_ecmd; int flags; int rxempty_task; int rxclean_task; int txclean_task; int linkch_task; } ;


 int JME_FLAG_SSET ;
 int JME_NAPI_ENABLE (struct jme_adapter*) ;
 int jme_clear_pm (struct jme_adapter*) ;
 int jme_request_irq (struct jme_adapter*) ;
 int jme_reset_link (struct jme_adapter*) ;
 int jme_reset_phy_processor (struct jme_adapter*) ;
 int jme_set_settings (struct net_device*,int *) ;
 int jme_start_irq (struct jme_adapter*) ;
 struct jme_adapter* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int tasklet_enable (int *) ;
 int tasklet_hi_enable (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int
jme_open(struct net_device *netdev)
{
 struct jme_adapter *jme = netdev_priv(netdev);
 int rc;

 jme_clear_pm(jme);
 JME_NAPI_ENABLE(jme);

 tasklet_enable(&jme->linkch_task);
 tasklet_enable(&jme->txclean_task);
 tasklet_hi_enable(&jme->rxclean_task);
 tasklet_hi_enable(&jme->rxempty_task);

 rc = jme_request_irq(jme);
 if (rc)
  goto err_out;

 jme_start_irq(jme);

 if (test_bit(JME_FLAG_SSET, &jme->flags))
  jme_set_settings(netdev, &jme->old_ecmd);
 else
  jme_reset_phy_processor(jme);

 jme_reset_link(jme);

 return 0;

err_out:
 netif_stop_queue(netdev);
 netif_carrier_off(netdev);
 return rc;
}
