
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int phase; } ;
struct scsi_cmnd {int result; void (* scsi_done ) (struct scsi_cmnd*) ;TYPE_4__ SCp; TYPE_2__* device; } ;
struct TYPE_11__ {scalar_t__ working_srl; } ;
struct TYPE_13__ {int * state; struct scsi_cmnd** srb; TYPE_3__ tw_compat_info; int flags; } ;
struct TYPE_10__ {scalar_t__ lun; TYPE_1__* host; } ;
struct TYPE_9__ {scalar_t__ hostdata; } ;
typedef TYPE_5__ TW_Device_Extension ;


 int DID_BAD_TARGET ;
 int DID_ERROR ;

 scalar_t__ TW_FW_SRL_LUNS_SUPPORTED ;
 int TW_IN_RESET ;
 int TW_PHASE_INITIAL ;
 int TW_S_COMPLETED ;
 scalar_t__ test_bit (int ,int *) ;
 int twa_free_request_id (TYPE_5__*,int) ;
 int twa_get_request_id (TYPE_5__*,int*) ;
 int twa_scsiop_execute_scsi (TYPE_5__*,int,int *,int ,int *) ;

__attribute__((used)) static int twa_scsi_queue(struct scsi_cmnd *SCpnt, void (*done)(struct scsi_cmnd *))
{
 int request_id, retval;
 TW_Device_Extension *tw_dev = (TW_Device_Extension *)SCpnt->device->host->hostdata;


 if (test_bit(TW_IN_RESET, &tw_dev->flags)) {
  retval = 128;
  goto out;
 }


 if ((SCpnt->device->lun != 0) && (tw_dev->tw_compat_info.working_srl < TW_FW_SRL_LUNS_SUPPORTED)) {
  SCpnt->result = (DID_BAD_TARGET << 16);
  done(SCpnt);
  retval = 0;
  goto out;
 }


 SCpnt->scsi_done = done;


 twa_get_request_id(tw_dev, &request_id);


 tw_dev->srb[request_id] = SCpnt;


 SCpnt->SCp.phase = TW_PHASE_INITIAL;

 retval = twa_scsiop_execute_scsi(tw_dev, request_id, ((void*)0), 0, ((void*)0));
 switch (retval) {
 case 128:
  twa_free_request_id(tw_dev, request_id);
  break;
 case 1:
  tw_dev->state[request_id] = TW_S_COMPLETED;
  twa_free_request_id(tw_dev, request_id);
  SCpnt->result = (DID_ERROR << 16);
  done(SCpnt);
  retval = 0;
 }
out:
 return retval;
}
