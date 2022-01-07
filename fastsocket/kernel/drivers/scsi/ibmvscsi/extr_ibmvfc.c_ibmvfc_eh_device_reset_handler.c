
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct ibmvfc_host {int dummy; } ;


 int ENTER ;
 int FAILED ;
 int IBMVFC_LUN_RESET ;
 int IBMVFC_TMF_LUN_RESET ;
 int LEAVE ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int ibmvfc_cancel_all (struct scsi_device*,int ) ;
 int ibmvfc_match_lun ;
 int ibmvfc_reset_device (struct scsi_device*,int ,char*) ;
 int ibmvfc_wait_for_ops (struct ibmvfc_host*,struct scsi_device*,int ) ;
 int ibmvfc_wait_while_resetting (struct ibmvfc_host*) ;
 struct ibmvfc_host* shost_priv (int ) ;

__attribute__((used)) static int ibmvfc_eh_device_reset_handler(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 struct ibmvfc_host *vhost = shost_priv(sdev->host);
 int cancel_rc, reset_rc;
 int rc = FAILED;

 ENTER;
 fc_block_scsi_eh(cmd);
 ibmvfc_wait_while_resetting(vhost);
 cancel_rc = ibmvfc_cancel_all(sdev, IBMVFC_TMF_LUN_RESET);
 reset_rc = ibmvfc_reset_device(sdev, IBMVFC_LUN_RESET, "LUN");

 if (!cancel_rc && !reset_rc)
  rc = ibmvfc_wait_for_ops(vhost, sdev, ibmvfc_match_lun);

 LEAVE;
 return rc;
}
