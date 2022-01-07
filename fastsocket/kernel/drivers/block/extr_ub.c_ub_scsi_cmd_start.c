
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ub_scsi_cmd {scalar_t__ dir; int state; int cdb; int cdb_len; TYPE_1__* lun; int len; int tag; } ;
struct TYPE_4__ {scalar_t__ expires; } ;
struct bulk_cb_wrap {int Flags; int CDB; int Length; int Lun; void* DataTransferLength; int Tag; void* Signature; } ;
struct ub_dev {TYPE_2__ work_timer; int work_done; int work_urb; int send_bulk_pipe; int dev; int last_pipe; int top_sense; struct bulk_cb_wrap work_bcb; } ;
struct TYPE_3__ {int num; } ;


 int GFP_ATOMIC ;
 int UB_CMDST_CMD ;
 scalar_t__ UB_DIR_READ ;
 int UB_INIT_COMPLETION (int ) ;
 int UB_MAX_CDB_SIZE ;
 int UB_SENSE_SIZE ;
 scalar_t__ UB_URB_TIMEOUT ;
 int US_BULK_CB_SIGN ;
 int US_BULK_CB_WRAP_LEN ;
 int add_timer (TYPE_2__*) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ jiffies ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int ,int ) ;
 int ub_complete (int *) ;
 int ub_urb_complete ;
 int usb_fill_bulk_urb (int *,int ,int ,struct bulk_cb_wrap*,int ,int ,struct ub_dev*) ;
 int usb_submit_urb (int *,int ) ;

__attribute__((used)) static int ub_scsi_cmd_start(struct ub_dev *sc, struct ub_scsi_cmd *cmd)
{
 struct bulk_cb_wrap *bcb;
 int rc;

 bcb = &sc->work_bcb;
 memset(&sc->top_sense, 0, UB_SENSE_SIZE);


 bcb->Signature = cpu_to_le32(US_BULK_CB_SIGN);
 bcb->Tag = cmd->tag;
 bcb->DataTransferLength = cpu_to_le32(cmd->len);
 bcb->Flags = (cmd->dir == UB_DIR_READ) ? 0x80 : 0;
 bcb->Lun = (cmd->lun != ((void*)0)) ? cmd->lun->num : 0;
 bcb->Length = cmd->cdb_len;


 memcpy(bcb->CDB, cmd->cdb, UB_MAX_CDB_SIZE);

 UB_INIT_COMPLETION(sc->work_done);

 sc->last_pipe = sc->send_bulk_pipe;
 usb_fill_bulk_urb(&sc->work_urb, sc->dev, sc->send_bulk_pipe,
     bcb, US_BULK_CB_WRAP_LEN, ub_urb_complete, sc);

 if ((rc = usb_submit_urb(&sc->work_urb, GFP_ATOMIC)) != 0) {

  ub_complete(&sc->work_done);
  return rc;
 }

 sc->work_timer.expires = jiffies + UB_URB_TIMEOUT;
 add_timer(&sc->work_timer);

 cmd->state = UB_CMDST_CMD;
 return 0;
}
