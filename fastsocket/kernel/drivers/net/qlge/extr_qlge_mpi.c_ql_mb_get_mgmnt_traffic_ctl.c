
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {int ndev; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; int * mbox_in; } ;


 int EINVAL ;
 int EIO ;
 int KERN_DEBUG ;
 int MB_CMD_GET_MGMNT_TFK_CTL ;
 scalar_t__ MB_CMD_STS_ERR ;
 scalar_t__ MB_CMD_STS_GOOD ;
 scalar_t__ MB_CMD_STS_INVLD_CMD ;
 int drv ;
 int memset (struct mbox_params*,int ,int) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int netif_printk (struct ql_adapter*,int ,int ,int ,char*) ;
 int ql_mailbox_command (struct ql_adapter*,struct mbox_params*) ;

__attribute__((used)) static int ql_mb_get_mgmnt_traffic_ctl(struct ql_adapter *qdev, u32 *control)
{
 struct mbox_params mbc;
 struct mbox_params *mbcp = &mbc;
 int status;

 memset(mbcp, 0, sizeof(struct mbox_params));
 *control = 0;

 mbcp->in_count = 1;
 mbcp->out_count = 1;

 mbcp->mbox_in[0] = MB_CMD_GET_MGMNT_TFK_CTL;

 status = ql_mailbox_command(qdev, mbcp);
 if (status)
  return status;

 if (mbcp->mbox_out[0] == MB_CMD_STS_GOOD) {
  *control = mbcp->mbox_in[1];
  return status;
 }

 if (mbcp->mbox_out[0] == MB_CMD_STS_INVLD_CMD) {
   netif_printk(qdev, drv, KERN_DEBUG, qdev->ndev,
     "Command not supported by firmware version.\n");
  status = -EINVAL;
 } else if (mbcp->mbox_out[0] == MB_CMD_STS_ERR) {
  netif_err(qdev, drv, qdev->ndev,
     "Failed to get MPI traffic control.\n");
  status = -EIO;
 }
 return status;
}
