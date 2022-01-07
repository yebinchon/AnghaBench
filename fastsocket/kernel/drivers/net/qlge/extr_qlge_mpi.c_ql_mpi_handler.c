
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int ndev; } ;
struct mbox_params {int out_count; int* mbox_out; int * mbox_in; } ;
 int CSR ;
 int CSR_CMD_CLR_R2PCI_INT ;
 int EIO ;
 int MB_CMD_EX_FW ;







 int drv ;
 int netif_err (struct ql_adapter*,int ,int ,char*,...) ;
 int ql_aen_lost (struct ql_adapter*,struct mbox_params*) ;
 int ql_get_mb_sts (struct ql_adapter*,struct mbox_params*) ;
 int ql_idc_cmplt_aen (struct ql_adapter*) ;
 int ql_idc_req_aen (struct ql_adapter*) ;
 int ql_init_fw_done (struct ql_adapter*,struct mbox_params*) ;
 int ql_link_down (struct ql_adapter*,struct mbox_params*) ;
 int ql_link_up (struct ql_adapter*,struct mbox_params*) ;
 int ql_queue_asic_error (struct ql_adapter*) ;
 int ql_queue_fw_error (struct ql_adapter*) ;
 int ql_sfp_in (struct ql_adapter*,struct mbox_params*) ;
 int ql_sfp_out (struct ql_adapter*,struct mbox_params*) ;
 int ql_write32 (struct ql_adapter*,int ,int ) ;

__attribute__((used)) static int ql_mpi_handler(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
 int status;
 int orig_count = mbcp->out_count;


 mbcp->out_count = 1;
 status = ql_get_mb_sts(qdev, mbcp);
 if (status) {
  netif_err(qdev, drv, qdev->ndev,
     "Could not read MPI, resetting ASIC!\n");
  ql_queue_asic_error(qdev);
  goto end;
 }

 switch (mbcp->mbox_out[0]) {





 case 131:
 case 132:
 case 130:
 case 128:
 case 134:
 case 133:
 case 129:






  mbcp->out_count = orig_count;
  status = ql_get_mb_sts(qdev, mbcp);
  return status;






 case 138:
  status = ql_idc_req_aen(qdev);
  break;






 case 140:
 case 139:
  status = ql_idc_cmplt_aen(qdev);
  break;

 case 136:
  ql_link_up(qdev, mbcp);
  break;

 case 137:
  ql_link_down(qdev, mbcp);
  break;

 case 142:



  if (mbcp->mbox_in[0] == MB_CMD_EX_FW) {
   mbcp->out_count = orig_count;
   status = ql_get_mb_sts(qdev, mbcp);
   mbcp->mbox_out[0] = 132;
   return status;
  }
  ql_init_fw_done(qdev, mbcp);
  break;

 case 145:
  ql_sfp_in(qdev, mbcp);
  break;

 case 144:
  ql_sfp_out(qdev, mbcp);
  break;




 case 141:



  if (mbcp->mbox_in[0] == MB_CMD_EX_FW) {
   mbcp->out_count = orig_count;
   status = ql_get_mb_sts(qdev, mbcp);
   mbcp->mbox_out[0] = 133;
   return status;
  }
  netif_err(qdev, drv, qdev->ndev,
     "Firmware initialization failed.\n");
  status = -EIO;
  ql_queue_fw_error(qdev);
  break;

 case 135:
  netif_err(qdev, drv, qdev->ndev, "System Error.\n");
  ql_queue_fw_error(qdev);
  status = -EIO;
  break;

 case 146:
  ql_aen_lost(qdev, mbcp);
  break;

 case 143:

  break;
 default:
  netif_err(qdev, drv, qdev->ndev,
     "Unsupported AE %.08x.\n", mbcp->mbox_out[0]);

 }
end:
 ql_write32(qdev, CSR, CSR_CMD_CLR_R2PCI_INT);






 mbcp->out_count = orig_count;
 return status;
}
