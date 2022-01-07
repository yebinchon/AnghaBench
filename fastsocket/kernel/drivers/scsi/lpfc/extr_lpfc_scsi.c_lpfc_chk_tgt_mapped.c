
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct lpfc_vport {int cfg_devloss_tmo; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct TYPE_2__ {struct lpfc_rport_data* hostdata; } ;


 int FAILED ;
 int KERN_INFO ;
 int LOG_FCP ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 scalar_t__ NLP_STE_MAPPED_NODE ;
 int SUCCESS ;
 unsigned long jiffies ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,struct lpfc_rport_data*) ;
 unsigned long msecs_to_jiffies (int) ;
 int schedule_timeout_uninterruptible (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static int
lpfc_chk_tgt_mapped(struct lpfc_vport *vport, struct scsi_cmnd *cmnd)
{
 struct lpfc_rport_data *rdata = cmnd->device->hostdata;
 struct lpfc_nodelist *pnode;
 unsigned long later;

 if (!rdata) {
  lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
   "0797 Tgt Map rport failure: rdata x%p\n", rdata);
  return FAILED;
 }
 pnode = rdata->pnode;




 later = msecs_to_jiffies(2 * vport->cfg_devloss_tmo * 1000) + jiffies;
 while (time_after(later, jiffies)) {
  if (!pnode || !NLP_CHK_NODE_ACT(pnode))
   return FAILED;
  if (pnode->nlp_state == NLP_STE_MAPPED_NODE)
   return SUCCESS;
  schedule_timeout_uninterruptible(msecs_to_jiffies(500));
  rdata = cmnd->device->hostdata;
  if (!rdata)
   return FAILED;
  pnode = rdata->pnode;
 }
 if (!pnode || !NLP_CHK_NODE_ACT(pnode) ||
     (pnode->nlp_state != NLP_STE_MAPPED_NODE))
  return FAILED;
 return SUCCESS;
}
