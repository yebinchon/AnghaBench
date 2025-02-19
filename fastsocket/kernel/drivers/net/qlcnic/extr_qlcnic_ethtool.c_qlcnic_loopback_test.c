
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_host_sds_ring {int dummy; } ;
struct qlcnic_hardware_context {int capabilities; scalar_t__ op_mode; int diag_cnt; int loopback_state; } ;
struct qlcnic_adapter {int max_sds_rings; int state; struct qlcnic_hardware_context* ahw; TYPE_2__* recv_ctx; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {struct qlcnic_host_sds_ring* sds_rings; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK ;
 int QLCNIC_FW_NOT_RESPOND ;
 int QLCNIC_ILB_MAX_RCV_LOOP ;
 int QLCNIC_ILB_MODE ;
 int QLCNIC_IS_LB_CONFIGURED (int ) ;
 int QLCNIC_LOOPBACK_TEST ;
 scalar_t__ QLCNIC_NON_PRIV_FUNC ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*,...) ;
 int msleep (int) ;
 int netdev_info (struct net_device*,char*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_loopback_test (struct net_device*,int ) ;
 int qlcnic_clear_lb_mode (struct qlcnic_adapter*,int ) ;
 int qlcnic_diag_alloc_res (struct net_device*,int ) ;
 int qlcnic_diag_free_res (struct net_device*,int) ;
 int qlcnic_do_lb_test (struct qlcnic_adapter*,int ) ;
 int qlcnic_process_rcv_ring_diag (struct qlcnic_host_sds_ring*) ;
 int qlcnic_set_lb_mode (struct qlcnic_adapter*,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int qlcnic_loopback_test(struct net_device *netdev, u8 mode)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 int max_sds_rings = adapter->max_sds_rings;
 struct qlcnic_host_sds_ring *sds_ring;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int loop = 0;
 int ret;

 if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_loopback_test(netdev, mode);

 if (!(adapter->ahw->capabilities &
       QLCNIC_FW_CAPABILITY_MULTI_LOOPBACK)) {
  dev_info(&adapter->pdev->dev,
    "Firmware do not support loopback test\n");
  return -EOPNOTSUPP;
 }

 dev_warn(&adapter->pdev->dev, "%s loopback test in progress\n",
   mode == QLCNIC_ILB_MODE ? "internal" : "external");
 if (ahw->op_mode == QLCNIC_NON_PRIV_FUNC) {
  dev_warn(&adapter->pdev->dev,
    "Loopback test not supported in nonprivileged mode\n");
  return 0;
 }

 if (test_and_set_bit(__QLCNIC_RESETTING, &adapter->state))
  return -EBUSY;

 ret = qlcnic_diag_alloc_res(netdev, QLCNIC_LOOPBACK_TEST);
 if (ret)
  goto clear_it;

 sds_ring = &adapter->recv_ctx->sds_rings[0];
 ret = qlcnic_set_lb_mode(adapter, mode);
 if (ret)
  goto free_res;

 ahw->diag_cnt = 0;
 do {
  msleep(500);
  qlcnic_process_rcv_ring_diag(sds_ring);
  if (loop++ > QLCNIC_ILB_MAX_RCV_LOOP) {
   netdev_info(netdev, "firmware didnt respond to loopback"
    " configure request\n");
   ret = -QLCNIC_FW_NOT_RESPOND;
   goto free_res;
  } else if (adapter->ahw->diag_cnt) {
   ret = adapter->ahw->diag_cnt;
   goto free_res;
  }
 } while (!QLCNIC_IS_LB_CONFIGURED(ahw->loopback_state));

 ret = qlcnic_do_lb_test(adapter, mode);

 qlcnic_clear_lb_mode(adapter, mode);

 free_res:
 qlcnic_diag_free_res(netdev, max_sds_rings);

 clear_it:
 adapter->max_sds_rings = max_sds_rings;
 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 return ret;
}
