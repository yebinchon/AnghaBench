
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct scsi_cmnd {void (* scsi_done ) (struct scsi_cmnd*) ;scalar_t__* cmnd; scalar_t__* sense_buffer; int result; TYPE_2__* device; } ;
struct adpt_device {int state; TYPE_2__* pScsi_dev; } ;
struct TYPE_8__ {int state; } ;
typedef TYPE_3__ adpt_hba ;
struct TYPE_7__ {struct adpt_device* hostdata; scalar_t__ lun; scalar_t__ id; scalar_t__ channel; TYPE_1__* host; } ;
struct TYPE_6__ {scalar_t__* hostdata; } ;


 int DID_NO_CONNECT ;
 int DID_OK ;
 int DPTI_DEV_RESET ;
 int DPTI_STATE_RESET ;
 int FAILED ;
 scalar_t__ REQUEST_SENSE ;
 int SCSI_MLQUEUE_HOST_BUSY ;
 struct adpt_device* adpt_find_device (TYPE_3__*,int ,int ,int ) ;
 int adpt_scsi_to_i2o (TYPE_3__*,struct scsi_cmnd*,struct adpt_device*) ;
 int rmb () ;
 void stub1 (struct scsi_cmnd*) ;
 void stub2 (struct scsi_cmnd*) ;

__attribute__((used)) static int adpt_queue(struct scsi_cmnd * cmd, void (*done) (struct scsi_cmnd *))
{
 adpt_hba* pHba = ((void*)0);
 struct adpt_device* pDev = ((void*)0);

 cmd->scsi_done = done;







 if ((cmd->cmnd[0] == REQUEST_SENSE) && (cmd->sense_buffer[0] != 0)) {
  cmd->result = (DID_OK << 16);
  cmd->scsi_done(cmd);
  return 0;
 }

 pHba = (adpt_hba*)cmd->device->host->hostdata[0];
 if (!pHba) {
  return FAILED;
 }

 rmb();
 if((pHba->state) & DPTI_STATE_RESET)
  return SCSI_MLQUEUE_HOST_BUSY;



 if((pDev = (struct adpt_device*) (cmd->device->hostdata)) == ((void*)0)) {





  if ((pDev = adpt_find_device(pHba, (u32)cmd->device->channel, (u32)cmd->device->id, (u32)cmd->device->lun)) == ((void*)0)) {


   cmd->result = (DID_NO_CONNECT << 16);
   cmd->scsi_done(cmd);
   return 0;
  }
  cmd->device->hostdata = pDev;
 }
 pDev->pScsi_dev = cmd->device;





 if (pDev->state & DPTI_DEV_RESET ) {
  return FAILED;
 }
 return adpt_scsi_to_i2o(pHba, cmd, pDev);
}
