
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct ibmvfc_host {int dummy; } ;


 int ENTER ;
 int FAILED ;
 int IBMVFC_TMF_ABORT_TASK_SET ;
 int LEAVE ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int ibmvfc_abort_task_set (struct scsi_device*) ;
 int ibmvfc_cancel_all (struct scsi_device*,int ) ;
 int ibmvfc_match_lun ;
 int ibmvfc_wait_for_ops (struct ibmvfc_host*,struct scsi_device*,int ) ;
 int ibmvfc_wait_while_resetting (struct ibmvfc_host*) ;
 struct ibmvfc_host* shost_priv (int ) ;

__attribute__((used)) static int ibmvfc_eh_abort_handler(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 struct ibmvfc_host *vhost = shost_priv(sdev->host);
 int cancel_rc, abort_rc;
 int rc = FAILED;

 ENTER;
 fc_block_scsi_eh(cmd);
 ibmvfc_wait_while_resetting(vhost);
 cancel_rc = ibmvfc_cancel_all(sdev, IBMVFC_TMF_ABORT_TASK_SET);
 abort_rc = ibmvfc_abort_task_set(sdev);

 if (!cancel_rc && !abort_rc)
  rc = ibmvfc_wait_for_ops(vhost, sdev, ibmvfc_match_lun);

 LEAVE;
 return rc;
}
