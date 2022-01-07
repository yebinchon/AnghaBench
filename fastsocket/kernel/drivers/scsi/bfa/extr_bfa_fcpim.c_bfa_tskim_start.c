
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_lun {int dummy; } ;
struct bfa_tskim_s {int tm_cmnd; int qe; int notify; int tsecs; struct scsi_lun lun; struct bfa_itnim_s* itnim; } ;
struct bfa_itnim_s {int tsk_q; } ;
typedef enum fcp_tm_cmnd { ____Placeholder_fcp_tm_cmnd } fcp_tm_cmnd ;


 int BFA_FALSE ;
 int BFA_TSKIM_SM_START ;
 int bfa_sm_send_event (struct bfa_tskim_s*,int ) ;
 int bfa_stats (struct bfa_itnim_s*,int ) ;
 int list_add_tail (int *,int *) ;
 int tm_cmnds ;

void
bfa_tskim_start(struct bfa_tskim_s *tskim, struct bfa_itnim_s *itnim,
   struct scsi_lun lun,
   enum fcp_tm_cmnd tm_cmnd, u8 tsecs)
{
 tskim->itnim = itnim;
 tskim->lun = lun;
 tskim->tm_cmnd = tm_cmnd;
 tskim->tsecs = tsecs;
 tskim->notify = BFA_FALSE;
 bfa_stats(itnim, tm_cmnds);

 list_add_tail(&tskim->qe, &itnim->tsk_q);
 bfa_sm_send_event(tskim, BFA_TSKIM_SM_START);
}
