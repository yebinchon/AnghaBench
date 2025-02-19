
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_lun {int dummy; } ;
struct TYPE_4__ {char* ptr; int Status; } ;
struct scsi_cmnd {TYPE_2__ SCp; TYPE_1__* device; int * host_scribble; } ;
struct bfad_tskim_s {int dummy; } ;
struct bfad_s {int bfad_lock; int bfa; } ;
struct bfad_itnim_s {int fcs_itnim; } ;
struct bfad_itnim_data_s {struct bfad_itnim_s* itnim; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct bfa_tskim_s {int dummy; } ;
struct bfa_itnim_s {int dummy; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef enum bfi_tskim_status { ____Placeholder_bfi_tskim_status } bfi_tskim_status ;
struct TYPE_3__ {int lun; struct bfad_itnim_data_s* hostdata; struct Scsi_Host* host; } ;


 int BFAD_LUN_RESET_TMO ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*,...) ;
 int BFI_TSKIM_STS_OK ;
 int DECLARE_WAIT_QUEUE_HEAD_ONSTACK (int ) ;
 int FAILED ;
 int FCP_TM_LUN_RESET ;
 int IO_DONE_BIT ;
 int KERN_ERR ;
 int SUCCESS ;
 struct bfa_itnim_s* bfa_fcs_itnim_get_halitn (int *) ;
 int bfa_log_level ;
 struct bfa_tskim_s* bfa_tskim_alloc (int *,struct bfad_tskim_s*) ;
 int bfa_tskim_start (struct bfa_tskim_s*,struct bfa_itnim_s*,struct scsi_lun,int ,int ) ;
 int int_to_scsilun (int ,struct scsi_lun*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,unsigned long*) ;
 int wait_event (int ,int ) ;
 int wq ;

__attribute__((used)) static int
bfad_im_reset_lun_handler(struct scsi_cmnd *cmnd)
{
 struct Scsi_Host *shost = cmnd->device->host;
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_itnim_data_s *itnim_data = cmnd->device->hostdata;
 struct bfad_s *bfad = im_port->bfad;
 struct bfa_tskim_s *tskim;
 struct bfad_itnim_s *itnim;
 struct bfa_itnim_s *bfa_itnim;
 DECLARE_WAIT_QUEUE_HEAD_ONSTACK(wq);
 int rc = SUCCESS;
 unsigned long flags;
 enum bfi_tskim_status task_status;
 struct scsi_lun scsilun;

 spin_lock_irqsave(&bfad->bfad_lock, flags);
 itnim = itnim_data->itnim;
 if (!itnim) {
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  rc = FAILED;
  goto out;
 }

 tskim = bfa_tskim_alloc(&bfad->bfa, (struct bfad_tskim_s *) cmnd);
 if (!tskim) {
  BFA_LOG(KERN_ERR, bfad, bfa_log_level,
    "LUN reset, fail to allocate tskim");
  spin_unlock_irqrestore(&bfad->bfad_lock, flags);
  rc = FAILED;
  goto out;
 }





 cmnd->host_scribble = ((void*)0);
 cmnd->SCp.ptr = (char *)&wq;
 cmnd->SCp.Status = 0;
 bfa_itnim = bfa_fcs_itnim_get_halitn(&itnim->fcs_itnim);
 int_to_scsilun(cmnd->device->lun, &scsilun);
 bfa_tskim_start(tskim, bfa_itnim, scsilun,
       FCP_TM_LUN_RESET, BFAD_LUN_RESET_TMO);
 spin_unlock_irqrestore(&bfad->bfad_lock, flags);

 wait_event(wq, test_bit(IO_DONE_BIT,
   (unsigned long *)&cmnd->SCp.Status));

 task_status = cmnd->SCp.Status >> 1;
 if (task_status != BFI_TSKIM_STS_OK) {
  BFA_LOG(KERN_ERR, bfad, bfa_log_level,
   "LUN reset failure, status: %d\n", task_status);
  rc = FAILED;
 }

out:
 return rc;
}
