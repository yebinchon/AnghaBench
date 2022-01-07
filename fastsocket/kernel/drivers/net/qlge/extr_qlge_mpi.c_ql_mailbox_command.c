
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int mpi_mutex; int ndev; } ;
struct mbox_params {scalar_t__* mbox_in; int* mbox_out; } ;


 int CSR ;
 int CSR_CMD_CLR_R2PCI_INT ;
 int EIO ;
 int ETIMEDOUT ;
 unsigned long HZ ;
 int INTR_MASK ;
 int INTR_MASK_PI ;
 unsigned long MAILBOX_TIMEOUT ;
 scalar_t__ MB_CMD_MAKE_SYS_ERR ;
 int MB_CMD_STS_GOOD ;
 int MB_CMD_STS_INTRMDT ;
 int drv ;
 unsigned long jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_err (struct ql_adapter*,int ,int ,char*) ;
 int ql_exec_mb_cmd (struct ql_adapter*,struct mbox_params*) ;
 int ql_mpi_handler (struct ql_adapter*,struct mbox_params*) ;
 int ql_wait_mbx_cmd_cmplt (struct ql_adapter*) ;
 int ql_write32 (struct ql_adapter*,int ,int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int ql_mailbox_command(struct ql_adapter *qdev, struct mbox_params *mbcp)
{
 int status;
 unsigned long count;

 mutex_lock(&qdev->mpi_mutex);


 ql_write32(qdev, INTR_MASK, (INTR_MASK_PI << 16));


 status = ql_exec_mb_cmd(qdev, mbcp);
 if (status)
  goto end;





 if (mbcp->mbox_in[0] == MB_CMD_MAKE_SYS_ERR)
  goto end;






 count = jiffies + HZ * MAILBOX_TIMEOUT;
 do {

  status = ql_wait_mbx_cmd_cmplt(qdev);
  if (status)
   continue;






  status = ql_mpi_handler(qdev, mbcp);
  if (status)
   goto end;





  if (((mbcp->mbox_out[0] & 0x0000f000) ==
     MB_CMD_STS_GOOD) ||
   ((mbcp->mbox_out[0] & 0x0000f000) ==
     MB_CMD_STS_INTRMDT))
   goto done;
 } while (time_before(jiffies, count));

 netif_err(qdev, drv, qdev->ndev,
    "Timed out waiting for mailbox complete.\n");
 status = -ETIMEDOUT;
 goto end;

done:




 ql_write32(qdev, CSR, CSR_CMD_CLR_R2PCI_INT);

 if (((mbcp->mbox_out[0] & 0x0000f000) !=
     MB_CMD_STS_GOOD) &&
  ((mbcp->mbox_out[0] & 0x0000f000) !=
     MB_CMD_STS_INTRMDT)) {
  status = -EIO;
 }
end:

 ql_write32(qdev, INTR_MASK, (INTR_MASK_PI << 16) | INTR_MASK_PI);
 mutex_unlock(&qdev->mpi_mutex);
 return status;
}
