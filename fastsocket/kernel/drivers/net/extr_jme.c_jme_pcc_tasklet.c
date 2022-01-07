
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct jme_adapter {int flags; int link_changing; struct net_device* dev; } ;


 int JME_FLAG_POLL ;
 int JME_FLAG_SHUTDOWN ;
 int atomic_read (int *) ;
 int jme_dynamic_pcc (struct jme_adapter*) ;
 int jme_shutdown_nic (struct jme_adapter*) ;
 int jme_start_pcc_timer (struct jme_adapter*) ;
 int jme_stop_pcc_timer (struct jme_adapter*) ;
 int netif_carrier_ok (struct net_device*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void
jme_pcc_tasklet(unsigned long arg)
{
 struct jme_adapter *jme = (struct jme_adapter *)arg;
 struct net_device *netdev = jme->dev;

 if (unlikely(test_bit(JME_FLAG_SHUTDOWN, &jme->flags))) {
  jme_shutdown_nic(jme);
  return;
 }

 if (unlikely(!netif_carrier_ok(netdev) ||
  (atomic_read(&jme->link_changing) != 1)
 )) {
  jme_stop_pcc_timer(jme);
  return;
 }

 if (!(test_bit(JME_FLAG_POLL, &jme->flags)))
  jme_dynamic_pcc(jme);

 jme_start_pcc_timer(jme);
}
