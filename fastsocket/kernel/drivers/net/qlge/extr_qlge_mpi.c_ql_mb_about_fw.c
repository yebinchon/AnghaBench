
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {scalar_t__ fw_rev_id; int ndev; } ;
struct mbox_params {int in_count; int out_count; scalar_t__* mbox_out; int * mbox_in; } ;


 int EIO ;
 int MB_CMD_ABOUT_FW ;
 scalar_t__ MB_CMD_STS_GOOD ;
 int drv ;
 int memset (struct mbox_params*,int ,int) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_mailbox_command (struct ql_adapter*,struct mbox_params*) ;

int ql_mb_about_fw(struct ql_adapter *qdev)
{
 struct mbox_params mbc;
 struct mbox_params *mbcp = &mbc;
 int status = 0;

 memset(mbcp, 0, sizeof(struct mbox_params));

 mbcp->in_count = 1;
 mbcp->out_count = 3;

 mbcp->mbox_in[0] = MB_CMD_ABOUT_FW;

 status = ql_mailbox_command(qdev, mbcp);
 if (status)
  return status;

 if (mbcp->mbox_out[0] != MB_CMD_STS_GOOD) {
  netif_err(qdev, drv, qdev->ndev,
     "Failed about firmware command\n");
  status = -EIO;
 }


 qdev->fw_rev_id = mbcp->mbox_out[1];

 return status;
}
