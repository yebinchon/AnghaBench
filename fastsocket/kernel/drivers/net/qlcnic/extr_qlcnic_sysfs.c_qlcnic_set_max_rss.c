
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {TYPE_1__* pdev; int msix_entries; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int NETDEV_UP ;
 int __qlcnic_down (struct qlcnic_adapter*,struct net_device*) ;
 int __qlcnic_up (struct qlcnic_adapter*,struct net_device*) ;
 int dev_err (int *,char*) ;
 int kfree (int ) ;
 int netif_device_attach (struct net_device*) ;
 int netif_device_detach (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_disable_mbx_poll (struct qlcnic_adapter*) ;
 int qlcnic_83xx_enable_mbx_poll (struct qlcnic_adapter*) ;
 int qlcnic_83xx_free_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_83xx_register_nic_idc_func (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_setup_mbx_intr (struct qlcnic_adapter*) ;
 int qlcnic_attach (struct qlcnic_adapter*) ;
 int qlcnic_detach (struct qlcnic_adapter*) ;
 int qlcnic_restore_indev_addr (struct net_device*,int ) ;
 int qlcnic_setup_intr (struct qlcnic_adapter*,int ) ;
 int qlcnic_teardown_intr (struct qlcnic_adapter*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int qlcnic_set_max_rss(struct qlcnic_adapter *adapter, u8 data, size_t len)
{
 int err;
 struct net_device *netdev = adapter->netdev;

 rtnl_lock();
 netif_device_detach(netdev);
 if (netif_running(netdev))
  __qlcnic_down(adapter, netdev);

 qlcnic_detach(adapter);

 if (qlcnic_83xx_check(adapter)) {
  qlcnic_83xx_enable_mbx_poll(adapter);
  qlcnic_83xx_free_mbx_intr(adapter);
 }

 qlcnic_teardown_intr(adapter);
 err = qlcnic_setup_intr(adapter, data);
 if (err) {
  kfree(adapter->msix_entries);
  dev_err(&adapter->pdev->dev, "failed to setup interrupt\n");
  return err;
 }

 if (qlcnic_83xx_check(adapter)) {

  qlcnic_83xx_register_nic_idc_func(adapter, 1);

  err = qlcnic_83xx_setup_mbx_intr(adapter);
  qlcnic_83xx_disable_mbx_poll(adapter);
  if (err) {
   dev_err(&adapter->pdev->dev,
    "failed to setup mbx interrupt\n");
   goto done;
  }
 }

 if (netif_running(netdev)) {
  err = qlcnic_attach(adapter);
  if (err)
   goto done;
  err = __qlcnic_up(adapter, netdev);
  if (err)
   goto done;
  qlcnic_restore_indev_addr(netdev, NETDEV_UP);
 }
 err = len;
 done:
 netif_device_attach(netdev);
 rtnl_unlock();
 return err;

}
