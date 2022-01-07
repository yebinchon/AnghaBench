
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint32_t ;
struct lpfc_vport {int dummy; } ;
struct lpfc_nodelist {int nlp_nodename; int nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {int hbalock; int work_list; } ;
struct TYPE_8__ {int evt_listp; int evt; } ;
struct TYPE_5__ {int wwnn; int wwpn; void* lun; int subcategory; int event_type; } ;
struct TYPE_6__ {void* newval; void* oldval; TYPE_1__ scsi_event; } ;
struct TYPE_7__ {TYPE_2__ queue_depth_evt; } ;
struct lpfc_fast_path_event {TYPE_4__ work_evt; struct lpfc_vport* vport; TYPE_3__ un; } ;


 int FC_REG_SCSI_EVENT ;
 int LPFC_EVENT_VARQUEDEPTH ;
 int LPFC_EVT_FASTPATH_MGMT_EVT ;
 scalar_t__ NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int list_add_tail (int *,int *) ;
 struct lpfc_fast_path_event* lpfc_alloc_fast_evt (struct lpfc_hba*) ;
 int lpfc_worker_wake_up (struct lpfc_hba*) ;
 int memcpy (int *,int *,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
lpfc_send_sdev_queuedepth_change_event(struct lpfc_hba *phba,
  struct lpfc_vport *vport,
  struct lpfc_nodelist *ndlp,
  uint32_t lun,
  uint32_t old_val,
  uint32_t new_val)
{
 struct lpfc_fast_path_event *fast_path_evt;
 unsigned long flags;

 fast_path_evt = lpfc_alloc_fast_evt(phba);
 if (!fast_path_evt)
  return;

 fast_path_evt->un.queue_depth_evt.scsi_event.event_type =
  FC_REG_SCSI_EVENT;
 fast_path_evt->un.queue_depth_evt.scsi_event.subcategory =
  LPFC_EVENT_VARQUEDEPTH;


 fast_path_evt->un.queue_depth_evt.scsi_event.lun = lun;
 if (ndlp && NLP_CHK_NODE_ACT(ndlp)) {
  memcpy(&fast_path_evt->un.queue_depth_evt.scsi_event.wwpn,
   &ndlp->nlp_portname, sizeof(struct lpfc_name));
  memcpy(&fast_path_evt->un.queue_depth_evt.scsi_event.wwnn,
   &ndlp->nlp_nodename, sizeof(struct lpfc_name));
 }

 fast_path_evt->un.queue_depth_evt.oldval = old_val;
 fast_path_evt->un.queue_depth_evt.newval = new_val;
 fast_path_evt->vport = vport;

 fast_path_evt->work_evt.evt = LPFC_EVT_FASTPATH_MGMT_EVT;
 spin_lock_irqsave(&phba->hbalock, flags);
 list_add_tail(&fast_path_evt->work_evt.evt_listp, &phba->work_list);
 spin_unlock_irqrestore(&phba->hbalock, flags);
 lpfc_worker_wake_up(phba);

 return;
}
