
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {int underflow; int result; int (* scsi_done ) (struct scsi_cmnd*) ;TYPE_1__* device; int * host_scribble; int sense_buffer; } ;
struct bfad_s {int dummy; } ;
struct bfad_itnim_s {int dummy; } ;
struct bfad_itnim_data_s {struct bfad_itnim_s* itnim; } ;
struct bfad_ioim_s {int dummy; } ;
typedef int s32 ;
typedef enum bfi_ioim_status { ____Placeholder_bfi_ioim_status } bfi_ioim_status ;
struct TYPE_3__ {scalar_t__ queue_depth; struct bfad_itnim_data_s* hostdata; int * host; } ;






 int DID_ERROR ;
 int DID_OK ;
 int SAM_STAT_GOOD ;
 scalar_t__ SAM_STAT_TASK_SET_FULL ;
 int SCSI_SENSE_BUFFERSIZE ;
 void* ScsiResult (int,int) ;
 scalar_t__ bfa_lun_queue_depth ;
 int bfa_trc (struct bfad_s*,int) ;
 int bfad_handle_qfull (struct bfad_itnim_s*,TYPE_1__*) ;
 int bfad_ramp_up_qdepth (struct bfad_itnim_s*,TYPE_1__*) ;
 int memcpy (int ,int*,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_dma_unmap (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int) ;
 int stub1 (struct scsi_cmnd*) ;

void
bfa_cb_ioim_done(void *drv, struct bfad_ioim_s *dio,
   enum bfi_ioim_status io_status, u8 scsi_status,
   int sns_len, u8 *sns_info, s32 residue)
{
 struct scsi_cmnd *cmnd = (struct scsi_cmnd *)dio;
 struct bfad_s *bfad = drv;
 struct bfad_itnim_data_s *itnim_data;
 struct bfad_itnim_s *itnim;
 u8 host_status = DID_OK;

 switch (io_status) {
 case 130:
  bfa_trc(bfad, scsi_status);
  scsi_set_resid(cmnd, 0);

  if (sns_len > 0) {
   bfa_trc(bfad, sns_len);
   if (sns_len > SCSI_SENSE_BUFFERSIZE)
    sns_len = SCSI_SENSE_BUFFERSIZE;
   memcpy(cmnd->sense_buffer, sns_info, sns_len);
  }

  if (residue > 0) {
   bfa_trc(bfad, residue);
   scsi_set_resid(cmnd, residue);
   if (!sns_len && (scsi_status == SAM_STAT_GOOD) &&
    (scsi_bufflen(cmnd) - residue) <
     cmnd->underflow) {
    bfa_trc(bfad, 0);
    host_status = DID_ERROR;
   }
  }
  cmnd->result = ScsiResult(host_status, scsi_status);

  break;

 case 131:
 case 128:
 case 129:
 default:
  host_status = DID_ERROR;
  cmnd->result = ScsiResult(host_status, 0);
 }


 if (cmnd->device->host != ((void*)0))
  scsi_dma_unmap(cmnd);

 cmnd->host_scribble = ((void*)0);
 bfa_trc(bfad, cmnd->result);

 itnim_data = cmnd->device->hostdata;
 if (itnim_data) {
  itnim = itnim_data->itnim;
  if (!cmnd->result && itnim &&
    (bfa_lun_queue_depth > cmnd->device->queue_depth)) {

   bfad_ramp_up_qdepth(itnim, cmnd->device);
  } else if (cmnd->result == SAM_STAT_TASK_SET_FULL && itnim) {

   bfad_handle_qfull(itnim, cmnd->device);
  }
 }

 cmnd->scsi_done(cmnd);
}
