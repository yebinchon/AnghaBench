
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct zfcp_unit {TYPE_2__* port; } ;
struct zfcp_fsf_req {int status; int completion; } ;
struct zfcp_adapter {int status; } ;
struct scsi_cmnd {TYPE_1__* device; } ;
struct TYPE_4__ {struct zfcp_adapter* adapter; } ;
struct TYPE_3__ {struct zfcp_unit* hostdata; } ;


 int FAILED ;
 int SUCCESS ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_FSFREQ_TMFUNCFAILED ;
 int ZFCP_STATUS_FSFREQ_TMFUNCNOTSUPP ;
 int atomic_read (int *) ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int wait_for_completion (int *) ;
 int zfcp_dbf_scsi_devreset (char*,int ,struct zfcp_unit*,struct scsi_cmnd*) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 struct zfcp_fsf_req* zfcp_fsf_send_fcp_ctm (struct zfcp_unit*,int ) ;

__attribute__((used)) static int zfcp_task_mgmt_function(struct scsi_cmnd *scpnt, u8 tm_flags)
{
 struct zfcp_unit *unit = scpnt->device->hostdata;
 struct zfcp_adapter *adapter = unit->port->adapter;
 struct zfcp_fsf_req *fsf_req = ((void*)0);
 int retval = SUCCESS, ret;
 int retry = 3;

 while (retry--) {
  fsf_req = zfcp_fsf_send_fcp_ctm(unit, tm_flags);
  if (fsf_req)
   break;

  zfcp_erp_wait(adapter);
  ret = fc_block_scsi_eh(scpnt);
  if (ret)
   return ret;

  if (!(atomic_read(&adapter->status) &
        ZFCP_STATUS_COMMON_RUNNING)) {
   zfcp_dbf_scsi_devreset("nres", tm_flags, unit, scpnt);
   return SUCCESS;
  }
 }
 if (!fsf_req)
  return FAILED;

 wait_for_completion(&fsf_req->completion);

 if (fsf_req->status & ZFCP_STATUS_FSFREQ_TMFUNCFAILED) {
  zfcp_dbf_scsi_devreset("fail", tm_flags, unit, scpnt);
  retval = FAILED;
 } else if (fsf_req->status & ZFCP_STATUS_FSFREQ_TMFUNCNOTSUPP) {
  zfcp_dbf_scsi_devreset("nsup", tm_flags, unit, scpnt);
  retval = FAILED;
 } else
  zfcp_dbf_scsi_devreset("okay", tm_flags, unit, scpnt);

 zfcp_fsf_req_free(fsf_req);
 return retval;
}
