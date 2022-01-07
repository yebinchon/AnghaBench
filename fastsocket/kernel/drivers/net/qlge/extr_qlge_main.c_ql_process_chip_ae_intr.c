
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;
struct ib_ae_iocb_rsp {int event; int q_id; } ;






 int drv ;
 int netdev_err (int ,char*,...) ;
 int netif_err (struct ql_adapter*,int ,int ,char*,...) ;
 int ql_queue_asic_error (struct ql_adapter*) ;
 int ql_queue_fw_error (struct ql_adapter*) ;
 int rx_err ;

__attribute__((used)) static void ql_process_chip_ae_intr(struct ql_adapter *qdev,
        struct ib_ae_iocb_rsp *ib_ae_rsp)
{
 switch (ib_ae_rsp->event) {
 case 130:
  netif_err(qdev, rx_err, qdev->ndev,
     "Management Processor Fatal Error.\n");
  ql_queue_fw_error(qdev);
  return;

 case 131:
  netdev_err(qdev->ndev, "Multiple CAM hits lookup occurred.\n");
  netdev_err(qdev->ndev, "This event shouldn't occur.\n");
  ql_queue_asic_error(qdev);
  return;

 case 128:
  netdev_err(qdev->ndev, "Soft ECC error detected.\n");
  ql_queue_asic_error(qdev);
  break;

 case 129:
  netdev_err(qdev->ndev, "PCI error occurred when reading "
     "anonymous buffers from rx_ring %d.\n",
     ib_ae_rsp->q_id);
  ql_queue_asic_error(qdev);
  break;

 default:
  netif_err(qdev, drv, qdev->ndev, "Unexpected event %d.\n",
     ib_ae_rsp->event);
  ql_queue_asic_error(qdev);
  break;
 }
}
