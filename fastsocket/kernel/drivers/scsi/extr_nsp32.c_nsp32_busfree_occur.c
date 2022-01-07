
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int Status; int Message; } ;
struct scsi_cmnd {int result; TYPE_4__ SCp; TYPE_2__* device; } ;
struct TYPE_12__ {TYPE_7__* cur_target; TYPE_3__* cur_lunt; } ;
typedef TYPE_5__ nsp32_hw_data ;
struct TYPE_13__ {int sync_flag; } ;
struct TYPE_10__ {int msgin03; } ;
struct TYPE_9__ {TYPE_1__* host; } ;
struct TYPE_8__ {unsigned int io_port; scalar_t__ hostdata; } ;


 int BM_CNT ;
 unsigned short DATA_IN_PHASE ;
 unsigned short DATA_OUT_PHASE ;
 int DID_ERROR ;
 int DID_OK ;
 int FALSE ;
 int KERN_WARNING ;
 unsigned short MSGIN_00_VALID ;
 unsigned short MSGIN_02_VALID ;
 unsigned short MSGIN_03_VALID ;
 unsigned short MSGIN_04_VALID ;
 int NSP32_DEBUG_BUSFREE ;
 int SACK_CNT ;
 int SAVED_SACK_CNT ;
 int SCSI_CSB_IN ;
 int SDTR_DONE ;
 int SDTR_INITIATOR ;
 int SDTR_TARGET ;
 int TRANSFER_CONTROL ;
 int TRUE ;
 int nsp32_adjust_busfree (struct scsi_cmnd*,unsigned int) ;
 int nsp32_dbg (int ,char*,...) ;
 int nsp32_msg (int ,char*) ;
 void* nsp32_read1 (unsigned int,int ) ;
 unsigned int nsp32_read4 (unsigned int,int ) ;
 int nsp32_scsi_done (struct scsi_cmnd*) ;
 int nsp32_set_async (TYPE_5__*,TYPE_7__*) ;
 int nsp32_write2 (unsigned int,int ,int ) ;
 int nsp32_write4 (unsigned int,int ,int ) ;
 int scsi_get_resid (struct scsi_cmnd*) ;
 int show_autophase (unsigned short) ;

__attribute__((used)) static int nsp32_busfree_occur(struct scsi_cmnd *SCpnt, unsigned short execph)
{
 nsp32_hw_data *data = (nsp32_hw_data *)SCpnt->device->host->hostdata;
 unsigned int base = SCpnt->device->host->io_port;

 nsp32_dbg(NSP32_DEBUG_BUSFREE, "enter execph=0x%x", execph);
 show_autophase(execph);

 nsp32_write4(base, BM_CNT, 0);
 nsp32_write2(base, TRANSFER_CONTROL, 0);
 if (execph & MSGIN_02_VALID) {
  nsp32_dbg(NSP32_DEBUG_BUSFREE, "MsgIn02_Valid");





  if (!(execph & MSGIN_00_VALID) &&
      ((execph & DATA_IN_PHASE) || (execph & DATA_OUT_PHASE))) {
   unsigned int sacklen, s_sacklen;




   sacklen = nsp32_read4(base, SACK_CNT );
   s_sacklen = nsp32_read4(base, SAVED_SACK_CNT);





   if (s_sacklen > 0) {
    if (sacklen != s_sacklen) {
     data->cur_lunt->msgin03 = FALSE;
    } else {
     data->cur_lunt->msgin03 = TRUE;
    }

    nsp32_adjust_busfree(SCpnt, s_sacklen);
   }
  }



 } else {



 }

 if (execph & MSGIN_03_VALID) {

 }




 if (data->cur_target->sync_flag & SDTR_INITIATOR) {




  nsp32_set_async(data, data->cur_target);
  data->cur_target->sync_flag &= ~SDTR_INITIATOR;
  data->cur_target->sync_flag |= SDTR_DONE;
 } else if (data->cur_target->sync_flag & SDTR_TARGET) {




  if (execph & (MSGIN_00_VALID | MSGIN_04_VALID)) {




  } else {





   nsp32_set_async(data, data->cur_target);
  }
  data->cur_target->sync_flag &= ~SDTR_TARGET;
  data->cur_target->sync_flag |= SDTR_DONE;
 }







 if (execph & MSGIN_00_VALID) {

  nsp32_dbg(NSP32_DEBUG_BUSFREE, "command complete");

  SCpnt->SCp.Status = nsp32_read1(base, SCSI_CSB_IN);
  SCpnt->SCp.Message = 0;
  nsp32_dbg(NSP32_DEBUG_BUSFREE,
     "normal end stat=0x%x resid=0x%x\n",
     SCpnt->SCp.Status, scsi_get_resid(SCpnt));
  SCpnt->result = (DID_OK << 16) |
           (SCpnt->SCp.Message << 8) |
           (SCpnt->SCp.Status << 0);
  nsp32_scsi_done(SCpnt);

  return TRUE;
 } else if (execph & MSGIN_04_VALID) {

  SCpnt->SCp.Status = nsp32_read1(base, SCSI_CSB_IN);
  SCpnt->SCp.Message = 4;

  nsp32_dbg(NSP32_DEBUG_BUSFREE, "disconnect");
  return TRUE;
 } else {

  nsp32_msg(KERN_WARNING, "unexpected bus free occurred");



  SCpnt->result = DID_ERROR << 16;
  nsp32_scsi_done(SCpnt);
  return TRUE;
 }
 return FALSE;
}
