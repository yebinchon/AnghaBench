
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;
struct scsi_device {int host; } ;
struct scsi_cmnd {struct scsi_device* device; } ;
struct ibmvfc_host {int dummy; } ;


 int ENTER ;
 int FAILED ;
 int IBMVFC_TARGET_RESET ;
 int LEAVE ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int ibmvfc_dev_cancel_all_reset ;
 int ibmvfc_match_target ;
 int ibmvfc_reset_device (struct scsi_device*,int ,char*) ;
 int ibmvfc_wait_for_ops (struct ibmvfc_host*,struct scsi_target*,int ) ;
 int ibmvfc_wait_while_resetting (struct ibmvfc_host*) ;
 struct scsi_target* scsi_target (struct scsi_device*) ;
 struct ibmvfc_host* shost_priv (int ) ;
 int starget_for_each_device (struct scsi_target*,unsigned long*,int ) ;

__attribute__((used)) static int ibmvfc_eh_target_reset_handler(struct scsi_cmnd *cmd)
{
 struct scsi_device *sdev = cmd->device;
 struct ibmvfc_host *vhost = shost_priv(sdev->host);
 struct scsi_target *starget = scsi_target(sdev);
 int reset_rc;
 int rc = FAILED;
 unsigned long cancel_rc = 0;

 ENTER;
 fc_block_scsi_eh(cmd);
 ibmvfc_wait_while_resetting(vhost);
 starget_for_each_device(starget, &cancel_rc, ibmvfc_dev_cancel_all_reset);
 reset_rc = ibmvfc_reset_device(sdev, IBMVFC_TARGET_RESET, "target");

 if (!cancel_rc && !reset_rc)
  rc = ibmvfc_wait_for_ops(vhost, starget, ibmvfc_match_target);

 LEAVE;
 return rc;
}
