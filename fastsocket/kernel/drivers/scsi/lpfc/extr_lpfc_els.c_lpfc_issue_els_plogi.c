
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int altBbCredit; scalar_t__ fcphLow; scalar_t__ fcphHigh; } ;
struct serv_parm {TYPE_1__ cmn; } ;
struct lpfc_vport {int fc_flag; int fc_sparam; struct lpfc_hba* phba; } ;
struct lpfc_sli {int dummy; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_iocbq {int iocb_cmpl; scalar_t__ context2; int iocb; } ;
struct TYPE_4__ {int elsXmitPLOGI; } ;
struct lpfc_hba {TYPE_2__ fc_stat; struct lpfc_sli sli; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
typedef int IOCB_t ;


 int ELS_CMD_PLOGI ;
 int FC_FABRIC ;
 scalar_t__ FC_PH3 ;
 scalar_t__ FC_PH_4_3 ;
 int FC_PUBLIC_LOOP ;
 int IOCB_ERROR ;
 int LPFC_DISC_TRC_ELS_CMD ;
 int LPFC_ELS_RING ;
 int NLP_CHK_NODE_ACT (struct lpfc_nodelist*) ;
 int lpfc_cmpl_els_plogi ;
 int lpfc_debugfs_disc_trc (struct lpfc_vport*,int ,char*,int ,int ,int ) ;
 int lpfc_els_free_iocb (struct lpfc_hba*,struct lpfc_iocbq*) ;
 struct lpfc_nodelist* lpfc_findnode_did (struct lpfc_vport*,int ) ;
 struct lpfc_iocbq* lpfc_prep_els_iocb (struct lpfc_vport*,int,int,int ,struct lpfc_nodelist*,int ,int ) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int memcpy (int *,int *,int) ;

int
lpfc_issue_els_plogi(struct lpfc_vport *vport, uint32_t did, uint8_t retry)
{
 struct lpfc_hba *phba = vport->phba;
 struct serv_parm *sp;
 IOCB_t *icmd;
 struct lpfc_nodelist *ndlp;
 struct lpfc_iocbq *elsiocb;
 struct lpfc_sli *psli;
 uint8_t *pcmd;
 uint16_t cmdsize;
 int ret;

 psli = &phba->sli;

 ndlp = lpfc_findnode_did(vport, did);
 if (ndlp && !NLP_CHK_NODE_ACT(ndlp))
  ndlp = ((void*)0);


 cmdsize = (sizeof(uint32_t) + sizeof(struct serv_parm));
 elsiocb = lpfc_prep_els_iocb(vport, 1, cmdsize, retry, ndlp, did,
         ELS_CMD_PLOGI);
 if (!elsiocb)
  return 1;

 icmd = &elsiocb->iocb;
 pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);


 *((uint32_t *) (pcmd)) = ELS_CMD_PLOGI;
 pcmd += sizeof(uint32_t);
 memcpy(pcmd, &vport->fc_sparam, sizeof(struct serv_parm));
 sp = (struct serv_parm *) pcmd;





 if ((vport->fc_flag & FC_FABRIC) && !(vport->fc_flag & FC_PUBLIC_LOOP))
  sp->cmn.altBbCredit = 1;

 if (sp->cmn.fcphLow < FC_PH_4_3)
  sp->cmn.fcphLow = FC_PH_4_3;

 if (sp->cmn.fcphHigh < FC_PH3)
  sp->cmn.fcphHigh = FC_PH3;

 lpfc_debugfs_disc_trc(vport, LPFC_DISC_TRC_ELS_CMD,
  "Issue PLOGI:     did:x%x",
  did, 0, 0);

 phba->fc_stat.elsXmitPLOGI++;
 elsiocb->iocb_cmpl = lpfc_cmpl_els_plogi;
 ret = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, elsiocb, 0);

 if (ret == IOCB_ERROR) {
  lpfc_els_free_iocb(phba, elsiocb);
  return 1;
 }
 return 0;
}
