
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netxen_adapter {scalar_t__ is_up; } ;


 scalar_t__ NETXEN_ADAPTER_UP_MAGIC ;
 int netxen_free_hw_resources (struct netxen_adapter*) ;
 int netxen_free_sw_resources (struct netxen_adapter*) ;
 int netxen_napi_del (struct netxen_adapter*) ;
 int netxen_nic_free_irq (struct netxen_adapter*) ;
 int netxen_release_rx_buffers (struct netxen_adapter*) ;
 int netxen_remove_sysfs_entries (struct netxen_adapter*) ;

__attribute__((used)) static void
netxen_nic_detach(struct netxen_adapter *adapter)
{
 if (adapter->is_up != NETXEN_ADAPTER_UP_MAGIC)
  return;

 netxen_remove_sysfs_entries(adapter);

 netxen_free_hw_resources(adapter);
 netxen_release_rx_buffers(adapter);
 netxen_nic_free_irq(adapter);
 netxen_napi_del(adapter);
 netxen_free_sw_resources(adapter);

 adapter->is_up = 0;
}
