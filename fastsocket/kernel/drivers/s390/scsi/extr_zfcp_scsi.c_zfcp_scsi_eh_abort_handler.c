
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_unit {int dummy; } ;
struct zfcp_fsf_req {int status; int completion; int * data; } ;
struct zfcp_adapter {int dbf; int status; int abort_lock; int req_list_lock; } ;
struct scsi_cmnd {scalar_t__ host_scribble; TYPE_1__* device; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
struct TYPE_2__ {struct zfcp_unit* hostdata; struct Scsi_Host* host; } ;


 int FAILED ;
 int SUCCESS ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED ;
 int ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED ;
 int atomic_read (int *) ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_completion (int *) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;
 int zfcp_dbf_scsi_abort (char*,int ,struct scsi_cmnd*,struct zfcp_fsf_req*,unsigned long) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;
 struct zfcp_fsf_req* zfcp_fsf_abort_fcp_command (unsigned long,struct zfcp_unit*) ;
 int zfcp_fsf_req_free (struct zfcp_fsf_req*) ;
 struct zfcp_fsf_req* zfcp_reqlist_find (struct zfcp_adapter*,unsigned long) ;

__attribute__((used)) static int zfcp_scsi_eh_abort_handler(struct scsi_cmnd *scpnt)
{
 struct Scsi_Host *scsi_host = scpnt->device->host;
 struct zfcp_adapter *adapter =
  (struct zfcp_adapter *) scsi_host->hostdata[0];
 struct zfcp_unit *unit = scpnt->device->hostdata;
 struct zfcp_fsf_req *old_req, *abrt_req;
 unsigned long flags;
 unsigned long old_reqid = (unsigned long) scpnt->host_scribble;
 int retval = SUCCESS, ret;
 int retry = 3;
 char *dbf_tag;


 write_lock_irqsave(&adapter->abort_lock, flags);

 spin_lock(&adapter->req_list_lock);
 old_req = zfcp_reqlist_find(adapter, old_reqid);
 spin_unlock(&adapter->req_list_lock);
 if (!old_req) {
  write_unlock_irqrestore(&adapter->abort_lock, flags);
  zfcp_dbf_scsi_abort("lte1", adapter->dbf, scpnt, ((void*)0),
        old_reqid);
  return FAILED;
 }
 old_req->data = ((void*)0);


 write_unlock_irqrestore(&adapter->abort_lock, flags);

 while (retry--) {
  abrt_req = zfcp_fsf_abort_fcp_command(old_reqid, unit);
  if (abrt_req)
   break;

  zfcp_erp_wait(adapter);
  ret = fc_block_scsi_eh(scpnt);
  if (ret)
   return ret;
  if (!(atomic_read(&adapter->status) &
        ZFCP_STATUS_COMMON_RUNNING)) {
   zfcp_dbf_scsi_abort("nres", adapter->dbf, scpnt, ((void*)0),
         old_reqid);
   return SUCCESS;
  }
 }
 if (!abrt_req)
  return FAILED;

 wait_for_completion(&abrt_req->completion);

 if (abrt_req->status & ZFCP_STATUS_FSFREQ_ABORTSUCCEEDED)
  dbf_tag = "okay";
 else if (abrt_req->status & ZFCP_STATUS_FSFREQ_ABORTNOTNEEDED)
  dbf_tag = "lte2";
 else {
  dbf_tag = "fail";
  retval = FAILED;
 }
 zfcp_dbf_scsi_abort(dbf_tag, adapter->dbf, scpnt, abrt_req, old_reqid);
 zfcp_fsf_req_free(abrt_req);
 return retval;
}
