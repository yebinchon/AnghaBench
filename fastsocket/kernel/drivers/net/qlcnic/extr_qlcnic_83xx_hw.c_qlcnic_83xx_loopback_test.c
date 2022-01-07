
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_hardware_context {scalar_t__ op_mode; scalar_t__ has_link_events; scalar_t__ linkup; } ;
struct qlcnic_adapter {int max_sds_rings; int flags; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; int state; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int EBUSY ;
 int QLCNIC_FW_NOT_RESPOND ;
 int QLCNIC_ILB_MAX_RCV_LOOP ;
 int QLCNIC_ILB_MODE ;
 int QLCNIC_LOOPBACK_TEST ;
 int QLCNIC_MSIX_ENABLED ;
 scalar_t__ QLCNIC_NON_PRIV_FUNC ;
 int __QLCNIC_RESETTING ;
 int dev_info (int *,char*) ;
 int msleep (int) ;
 int netdev_info (struct net_device*,char*,...) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int qlcnic_83xx_clear_lb_mode (struct qlcnic_adapter*,int ) ;
 int qlcnic_83xx_diag_alloc_res (struct net_device*,int ,int) ;
 int qlcnic_83xx_diag_free_res (struct net_device*,int) ;
 int qlcnic_83xx_process_aen (struct qlcnic_adapter*) ;
 int qlcnic_83xx_set_lb_mode (struct qlcnic_adapter*,int ) ;
 int qlcnic_do_lb_test (struct qlcnic_adapter*,int ) ;
 scalar_t__ qlcnic_get_diag_lock (struct qlcnic_adapter*) ;
 int qlcnic_release_diag_lock (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

int qlcnic_83xx_loopback_test(struct net_device *netdev, u8 mode)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int ret = 0, loop = 0, max_sds_rings = adapter->max_sds_rings;

 if (ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
  netdev_warn(netdev,
       "Loopback test not supported in non privileged mode\n");
  return ret;
 }

 if (test_bit(__QLCNIC_RESETTING, &adapter->state)) {
  netdev_info(netdev, "Device is resetting\n");
  return -EBUSY;
 }

 if (qlcnic_get_diag_lock(adapter)) {
  netdev_info(netdev, "Device is in diagnostics mode\n");
  return -EBUSY;
 }

 netdev_info(netdev, "%s loopback test in progress\n",
      mode == QLCNIC_ILB_MODE ? "internal" : "external");

 ret = qlcnic_83xx_diag_alloc_res(netdev, QLCNIC_LOOPBACK_TEST,
      max_sds_rings);
 if (ret)
  goto fail_diag_alloc;

 ret = qlcnic_83xx_set_lb_mode(adapter, mode);
 if (ret)
  goto free_diag_res;


 do {
  msleep(500);
  if (!(adapter->flags & QLCNIC_MSIX_ENABLED))
   qlcnic_83xx_process_aen(adapter);

  if (loop++ > QLCNIC_ILB_MAX_RCV_LOOP) {
   dev_info(&adapter->pdev->dev,
     "Firmware didn't sent link up event to loopback request\n");
   ret = -QLCNIC_FW_NOT_RESPOND;
   qlcnic_83xx_clear_lb_mode(adapter, mode);
   goto free_diag_res;
  }
 } while ((adapter->ahw->linkup && ahw->has_link_events) != 1);


 if (netif_running(netdev)) {
  netif_carrier_off(netdev);
  netif_stop_queue(netdev);
 }

 ret = qlcnic_do_lb_test(adapter, mode);

 qlcnic_83xx_clear_lb_mode(adapter, mode);

free_diag_res:
 qlcnic_83xx_diag_free_res(netdev, max_sds_rings);

fail_diag_alloc:
 adapter->max_sds_rings = max_sds_rings;
 qlcnic_release_diag_lock(adapter);
 return ret;
}
