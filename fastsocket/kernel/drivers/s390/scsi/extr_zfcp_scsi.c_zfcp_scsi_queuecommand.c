
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct zfcp_unit {TYPE_2__* port; int status; } ;
struct zfcp_adapter {int dbf; } ;
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_3__* device; int * host_scribble; } ;
struct fc_rport {int dummy; } ;
struct TYPE_6__ {struct zfcp_unit* hostdata; TYPE_1__* host; } ;
struct TYPE_5__ {int status; struct zfcp_adapter* adapter; } ;
struct TYPE_4__ {scalar_t__* hostdata; } ;


 int BUG_ON (int) ;
 int DID_ERROR ;
 int DID_IMM_RETRY ;
 int DID_NO_CONNECT ;
 int EBUSY ;
 int SCSI_MLQUEUE_DEVICE_BUSY ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_read (int *) ;
 int fc_remote_port_chkready (struct fc_rport*) ;
 int scsi_target (TYPE_3__*) ;
 struct fc_rport* starget_to_rport (int ) ;
 void stub1 (struct scsi_cmnd*) ;
 scalar_t__ unlikely (int) ;
 int zfcp_dbf_scsi_result (char*,int,int ,struct scsi_cmnd*,int *) ;
 int zfcp_fsf_send_fcp_command_task (struct zfcp_unit*,struct scsi_cmnd*) ;
 int zfcp_scsi_command_fail (struct scsi_cmnd*,int ) ;

__attribute__((used)) static int zfcp_scsi_queuecommand(struct scsi_cmnd *scpnt,
      void (*done) (struct scsi_cmnd *))
{
 struct zfcp_unit *unit;
 struct zfcp_adapter *adapter;
 int status, scsi_result, ret;
 struct fc_rport *rport = starget_to_rport(scsi_target(scpnt->device));


 scpnt->result = 0;
 scpnt->host_scribble = ((void*)0);
 scpnt->scsi_done = done;





 adapter = (struct zfcp_adapter *) scpnt->device->host->hostdata[0];
 unit = scpnt->device->hostdata;

 BUG_ON(!adapter || (adapter != unit->port->adapter));
 BUG_ON(!scpnt->scsi_done);

 if (unlikely(!unit)) {
  zfcp_scsi_command_fail(scpnt, DID_NO_CONNECT);
  return 0;
 }

 scsi_result = fc_remote_port_chkready(rport);
 if (unlikely(scsi_result)) {
  scpnt->result = scsi_result;
  zfcp_dbf_scsi_result("fail", 4, adapter->dbf, scpnt, ((void*)0));
  scpnt->scsi_done(scpnt);
  return 0;
 }

 status = atomic_read(&unit->status);
 if (unlikely(status & ZFCP_STATUS_COMMON_ERP_FAILED) &&
       !(atomic_read(&unit->port->status) &
         ZFCP_STATUS_COMMON_ERP_FAILED)) {


  zfcp_scsi_command_fail(scpnt, DID_ERROR);
  return 0;
 }

 if (unlikely(!(status & ZFCP_STATUS_COMMON_UNBLOCKED))) {






  zfcp_scsi_command_fail(scpnt, DID_IMM_RETRY);
  return 0;
 }

 ret = zfcp_fsf_send_fcp_command_task(unit, scpnt);
 if (unlikely(ret == -EBUSY))
  return SCSI_MLQUEUE_DEVICE_BUSY;
 else if (unlikely(ret < 0))
  return SCSI_MLQUEUE_HOST_BUSY;

 return ret;
}
