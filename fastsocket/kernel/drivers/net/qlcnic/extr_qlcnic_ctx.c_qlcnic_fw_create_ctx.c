
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int flags; int max_drv_tx_rings; TYPE_1__* ahw; int state; int * tx_ring; int pdev; } ;
struct TYPE_2__ {scalar_t__ diag_test; } ;


 scalar_t__ QLCNIC_LOOPBACK_TEST ;
 int QLCNIC_MSIX_ENABLED ;
 int QLCNIC_NEED_FLR ;
 int __QLCNIC_FW_ATTACHED ;
 int pci_reset_function (int ) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_config_intrpt (struct qlcnic_adapter*,int) ;
 int qlcnic_fw_cmd_create_rx_ctx (struct qlcnic_adapter*) ;
 int qlcnic_fw_cmd_create_tx_ctx (struct qlcnic_adapter*,int *,int) ;
 int qlcnic_fw_cmd_del_rx_ctx (struct qlcnic_adapter*) ;
 int qlcnic_fw_cmd_del_tx_ctx (struct qlcnic_adapter*,int *) ;
 int set_bit (int ,int *) ;

int qlcnic_fw_create_ctx(struct qlcnic_adapter *dev)
{
 int i, err, ring;

 if (dev->flags & QLCNIC_NEED_FLR) {
  pci_reset_function(dev->pdev);
  dev->flags &= ~QLCNIC_NEED_FLR;
 }

 if (qlcnic_83xx_check(dev) && (dev->flags & QLCNIC_MSIX_ENABLED)) {
  if (dev->ahw->diag_test != QLCNIC_LOOPBACK_TEST) {
   err = qlcnic_83xx_config_intrpt(dev, 1);
   if (err)
    return err;
  }
 }

 err = qlcnic_fw_cmd_create_rx_ctx(dev);
 if (err)
  goto err_out;

 for (ring = 0; ring < dev->max_drv_tx_rings; ring++) {
  err = qlcnic_fw_cmd_create_tx_ctx(dev,
        &dev->tx_ring[ring],
        ring);
  if (err) {
   qlcnic_fw_cmd_del_rx_ctx(dev);
   if (ring == 0)
    goto err_out;

   for (i = 0; i < ring; i++)
    qlcnic_fw_cmd_del_tx_ctx(dev, &dev->tx_ring[i]);

   goto err_out;
  }
 }

 set_bit(__QLCNIC_FW_ATTACHED, &dev->state);
 return 0;

err_out:
 if (qlcnic_83xx_check(dev) && (dev->flags & QLCNIC_MSIX_ENABLED)) {
  if (dev->ahw->diag_test != QLCNIC_LOOPBACK_TEST)
   qlcnic_83xx_config_intrpt(dev, 0);
 }
 return err;
}
