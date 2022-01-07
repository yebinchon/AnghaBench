
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int revision_id; } ;
struct netxen_adapter {scalar_t__ is_up; int capabilities; int tx_clean_lock; int (* set_promisc ) (struct netxen_adapter*,int ) ;TYPE_1__ ahw; int (* stop_port ) (struct netxen_adapter*) ;int state; } ;
struct net_device {int dummy; } ;


 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ;
 int NETXEN_NIU_NON_PROMISC_MODE ;
 int NX_FW_CAPABILITY_LINK_NOTIFICATION ;
 scalar_t__ NX_IS_REVISION_P3 (int ) ;
 int __NX_DEV_UP ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int netxen_linkevent_request (struct netxen_adapter*,int ) ;
 int netxen_napi_disable (struct netxen_adapter*) ;
 int netxen_p3_free_mac_list (struct netxen_adapter*) ;
 int netxen_release_tx_buffers (struct netxen_adapter*) ;
 int smp_mb () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct netxen_adapter*) ;
 int stub2 (struct netxen_adapter*,int ) ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static void
__netxen_nic_down(struct netxen_adapter *adapter, struct net_device *netdev)
{
 if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
  return;

 if (!test_and_clear_bit(__NX_DEV_UP, &adapter->state))
  return;

 smp_mb();
 spin_lock(&adapter->tx_clean_lock);
 netif_carrier_off(netdev);
 netif_tx_disable(netdev);

 if (adapter->capabilities & NX_FW_CAPABILITY_LINK_NOTIFICATION)
  netxen_linkevent_request(adapter, 0);

 if (adapter->stop_port)
  adapter->stop_port(adapter);

 if (NX_IS_REVISION_P3(adapter->ahw.revision_id))
  netxen_p3_free_mac_list(adapter);

 adapter->set_promisc(adapter, NETXEN_NIU_NON_PROMISC_MODE);

 netxen_napi_disable(adapter);

 netxen_release_tx_buffers(adapter);
 spin_unlock(&adapter->tx_clean_lock);
}
