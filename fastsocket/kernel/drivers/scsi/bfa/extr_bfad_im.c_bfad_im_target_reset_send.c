
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_lun {int dummy; } ;
struct TYPE_2__ {scalar_t__ Status; } ;
struct scsi_cmnd {TYPE_1__ SCp; int * host_scribble; } ;
struct bfad_tskim_s {int dummy; } ;
struct bfad_s {int bfa; } ;
struct bfad_itnim_s {int fcs_itnim; } ;
struct bfa_tskim_s {int dummy; } ;
struct bfa_itnim_s {int dummy; } ;
typedef int scsilun ;
typedef int bfa_status_t ;


 int BFAD_TARGET_RESET_TMO ;
 int BFA_LOG (int ,struct bfad_s*,int ,char*) ;
 int BFA_STATUS_FAILED ;
 int BFA_STATUS_OK ;
 int FCP_TM_TARGET_RESET ;
 int KERN_ERR ;
 struct bfa_itnim_s* bfa_fcs_itnim_get_halitn (int *) ;
 int bfa_log_level ;
 struct bfa_tskim_s* bfa_tskim_alloc (int *,struct bfad_tskim_s*) ;
 int bfa_tskim_start (struct bfa_tskim_s*,struct bfa_itnim_s*,struct scsi_lun,int ,int ) ;
 int memset (struct scsi_lun*,int ,int) ;

__attribute__((used)) static bfa_status_t
bfad_im_target_reset_send(struct bfad_s *bfad, struct scsi_cmnd *cmnd,
       struct bfad_itnim_s *itnim)
{
 struct bfa_tskim_s *tskim;
 struct bfa_itnim_s *bfa_itnim;
 bfa_status_t rc = BFA_STATUS_OK;
 struct scsi_lun scsilun;

 tskim = bfa_tskim_alloc(&bfad->bfa, (struct bfad_tskim_s *) cmnd);
 if (!tskim) {
  BFA_LOG(KERN_ERR, bfad, bfa_log_level,
   "target reset, fail to allocate tskim\n");
  rc = BFA_STATUS_FAILED;
  goto out;
 }





 cmnd->host_scribble = ((void*)0);
 cmnd->SCp.Status = 0;
 bfa_itnim = bfa_fcs_itnim_get_halitn(&itnim->fcs_itnim);
 memset(&scsilun, 0, sizeof(scsilun));
 bfa_tskim_start(tskim, bfa_itnim, scsilun,
       FCP_TM_TARGET_RESET, BFAD_TARGET_RESET_TMO);
out:
 return rc;
}
