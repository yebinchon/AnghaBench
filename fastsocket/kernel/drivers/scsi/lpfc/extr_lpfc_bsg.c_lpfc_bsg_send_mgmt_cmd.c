
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_9__ ;
typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_15__ ;
typedef struct TYPE_20__ TYPE_14__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint32_t ;
struct ulp_bde64 {int dummy; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {int nlp_flag; size_t nlp_rpi; } ;
struct TYPE_23__ {struct lpfc_nodelist* ndlp; } ;
struct TYPE_16__ {int Fctl; int Type; int Rctl; scalar_t__ Dfctl; } ;
struct TYPE_17__ {TYPE_10__ hcsw; } ;
struct TYPE_30__ {int bdeSize; int bdeFlags; int addrLow; int addrHigh; scalar_t__ ulpIoTag32; } ;
struct TYPE_19__ {TYPE_11__ w5; TYPE_9__ bdl; } ;
struct TYPE_18__ {TYPE_13__ genreq64; } ;
struct TYPE_20__ {int ulpBdeCount; int ulpLe; size_t ulpContext; int ulpTimeout; int ulpOwner; int ulpClass; TYPE_12__ un; int ulpCommand; } ;
struct lpfc_iocbq {TYPE_2__ context_un; struct lpfc_dmabuf* context3; struct lpfc_dmabuf* context2; struct lpfc_dmabuf* context1; int iocb_cmpl; int iocb_flag; int vport; TYPE_14__ iocb; } ;
struct TYPE_22__ {size_t* rpi_ids; } ;
struct lpfc_hba {scalar_t__ sli_rev; int fc_ratov; int cfg_poll; int HCregaddr; int pport; TYPE_1__ sli4_hba; } ;
struct TYPE_24__ {struct lpfc_dmabuf* rmp; struct lpfc_nodelist* ndlp; struct lpfc_iocbq* cmdiocbq; } ;
struct TYPE_25__ {TYPE_3__ iocb; } ;
struct lpfc_dmabuf {int phys; scalar_t__ virt; TYPE_4__ context_un; struct fc_bsg_job* set_job; int type; int list; } ;
struct TYPE_29__ {int payload_len; } ;
struct TYPE_21__ {int payload_len; } ;
struct fc_bsg_job {struct lpfc_dmabuf* dd_data; TYPE_7__* reply; TYPE_8__ reply_payload; TYPE_15__ request_payload; TYPE_6__* rport; TYPE_5__* shost; } ;
struct bsg_job_data {int phys; scalar_t__ virt; TYPE_4__ context_un; struct fc_bsg_job* set_job; int type; int list; } ;
struct TYPE_28__ {int result; scalar_t__ reply_payload_rcv_len; } ;
struct TYPE_27__ {struct lpfc_rport_data* dd_data; } ;
struct TYPE_26__ {scalar_t__ hostdata; } ;
typedef TYPE_14__ IOCB_t ;


 int BUFF_TYPE_BLP_64 ;
 int CLASS3 ;
 int CMD_GEN_REQUEST64_CR ;
 int DISABLE_FCP_RING_INT ;
 int EAGAIN ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int FC_RCTL_DD_UNSOL_CTL ;
 int FC_TYPE_CT ;
 int GFP_KERNEL ;
 int HC_R0INT_ENA ;
 int INIT_LIST_HEAD (int *) ;
 int IOCB_BUSY ;
 int IOCB_SUCCESS ;
 int KERN_WARNING ;
 int LA ;
 int LOG_LIBDFC ;
 int LPFC_BPL_SIZE ;
 int LPFC_ELS_RING ;
 int LPFC_FCP_RING ;
 int LPFC_IO_LIBDFC ;
 scalar_t__ LPFC_SLI_REV4 ;
 int NLP_ELS_SND_MASK ;
 int OWN_CHIP ;
 int SI ;
 int TYPE_IOCB ;
 int kfree (struct lpfc_dmabuf*) ;
 struct lpfc_dmabuf* kmalloc (int,int ) ;
 struct lpfc_dmabuf* lpfc_alloc_bsg_buffers (struct lpfc_hba*,int ,int,struct ulp_bde64*,int*) ;
 int lpfc_bsg_copy_data (struct lpfc_dmabuf*,TYPE_15__*,int ,int) ;
 int lpfc_bsg_send_mgmt_cmd_cmp ;
 int lpfc_free_bsg_buffers (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 scalar_t__ lpfc_mbuf_alloc (struct lpfc_hba*,int ,int *) ;
 int lpfc_mbuf_free (struct lpfc_hba*,scalar_t__,int ) ;
 int lpfc_nlp_get (struct lpfc_nodelist*) ;
 int lpfc_nlp_put (struct lpfc_nodelist*) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*) ;
 scalar_t__ lpfc_readl (int ,int*) ;
 struct lpfc_iocbq* lpfc_sli_get_iocbq (struct lpfc_hba*) ;
 int lpfc_sli_issue_iocb (struct lpfc_hba*,int ,struct lpfc_iocbq*,int ) ;
 int lpfc_sli_release_iocbq (struct lpfc_hba*,struct lpfc_iocbq*) ;
 int putPaddrHigh (int ) ;
 int putPaddrLow (int ) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int
lpfc_bsg_send_mgmt_cmd(struct fc_bsg_job *job)
{
 struct lpfc_vport *vport = (struct lpfc_vport *)job->shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_rport_data *rdata = job->rport->dd_data;
 struct lpfc_nodelist *ndlp = rdata->pnode;
 struct ulp_bde64 *bpl = ((void*)0);
 uint32_t timeout;
 struct lpfc_iocbq *cmdiocbq = ((void*)0);
 IOCB_t *cmd;
 struct lpfc_dmabuf *bmp = ((void*)0), *cmp = ((void*)0), *rmp = ((void*)0);
 int request_nseg;
 int reply_nseg;
 struct bsg_job_data *dd_data;
 uint32_t creg_val;
 int rc = 0;
 int iocb_stat;


 job->reply->reply_payload_rcv_len = 0;


 dd_data = kmalloc(sizeof(struct bsg_job_data), GFP_KERNEL);
 if (!dd_data) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2733 Failed allocation of dd_data\n");
  rc = -ENOMEM;
  goto no_dd_data;
 }

 if (!lpfc_nlp_get(ndlp)) {
  rc = -ENODEV;
  goto no_ndlp;
 }

 if (ndlp->nlp_flag & NLP_ELS_SND_MASK) {
  rc = -ENODEV;
  goto free_ndlp;
 }

 cmdiocbq = lpfc_sli_get_iocbq(phba);
 if (!cmdiocbq) {
  rc = -ENOMEM;
  goto free_ndlp;
 }

 cmd = &cmdiocbq->iocb;

 bmp = kmalloc(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
 if (!bmp) {
  rc = -ENOMEM;
  goto free_cmdiocbq;
 }
 bmp->virt = lpfc_mbuf_alloc(phba, 0, &bmp->phys);
 if (!bmp->virt) {
  rc = -ENOMEM;
  goto free_bmp;
 }

 INIT_LIST_HEAD(&bmp->list);

 bpl = (struct ulp_bde64 *) bmp->virt;
 request_nseg = LPFC_BPL_SIZE/sizeof(struct ulp_bde64);
 cmp = lpfc_alloc_bsg_buffers(phba, job->request_payload.payload_len,
         1, bpl, &request_nseg);
 if (!cmp) {
  rc = -ENOMEM;
  goto free_bmp;
 }
 lpfc_bsg_copy_data(cmp, &job->request_payload,
      job->request_payload.payload_len, 1);

 bpl += request_nseg;
 reply_nseg = LPFC_BPL_SIZE/sizeof(struct ulp_bde64) - request_nseg;
 rmp = lpfc_alloc_bsg_buffers(phba, job->reply_payload.payload_len, 0,
         bpl, &reply_nseg);
 if (!rmp) {
  rc = -ENOMEM;
  goto free_cmp;
 }

 cmd->un.genreq64.bdl.ulpIoTag32 = 0;
 cmd->un.genreq64.bdl.addrHigh = putPaddrHigh(bmp->phys);
 cmd->un.genreq64.bdl.addrLow = putPaddrLow(bmp->phys);
 cmd->un.genreq64.bdl.bdeFlags = BUFF_TYPE_BLP_64;
 cmd->un.genreq64.bdl.bdeSize =
  (request_nseg + reply_nseg) * sizeof(struct ulp_bde64);
 cmd->ulpCommand = CMD_GEN_REQUEST64_CR;
 cmd->un.genreq64.w5.hcsw.Fctl = (SI | LA);
 cmd->un.genreq64.w5.hcsw.Dfctl = 0;
 cmd->un.genreq64.w5.hcsw.Rctl = FC_RCTL_DD_UNSOL_CTL;
 cmd->un.genreq64.w5.hcsw.Type = FC_TYPE_CT;
 cmd->ulpBdeCount = 1;
 cmd->ulpLe = 1;
 cmd->ulpClass = CLASS3;
 cmd->ulpContext = ndlp->nlp_rpi;
 if (phba->sli_rev == LPFC_SLI_REV4)
  cmd->ulpContext = phba->sli4_hba.rpi_ids[ndlp->nlp_rpi];
 cmd->ulpOwner = OWN_CHIP;
 cmdiocbq->vport = phba->pport;
 cmdiocbq->context3 = bmp;
 cmdiocbq->iocb_flag |= LPFC_IO_LIBDFC;
 timeout = phba->fc_ratov * 2;
 cmd->ulpTimeout = timeout;

 cmdiocbq->iocb_cmpl = lpfc_bsg_send_mgmt_cmd_cmp;
 cmdiocbq->context1 = dd_data;
 cmdiocbq->context2 = cmp;
 cmdiocbq->context3 = bmp;
 cmdiocbq->context_un.ndlp = ndlp;
 dd_data->type = TYPE_IOCB;
 dd_data->set_job = job;
 dd_data->context_un.iocb.cmdiocbq = cmdiocbq;
 dd_data->context_un.iocb.ndlp = ndlp;
 dd_data->context_un.iocb.rmp = rmp;
 job->dd_data = dd_data;

 if (phba->cfg_poll & DISABLE_FCP_RING_INT) {
  if (lpfc_readl(phba->HCregaddr, &creg_val)) {
   rc = -EIO ;
   goto free_rmp;
  }
  creg_val |= (HC_R0INT_ENA << LPFC_FCP_RING);
  writel(creg_val, phba->HCregaddr);
  readl(phba->HCregaddr);
 }

 iocb_stat = lpfc_sli_issue_iocb(phba, LPFC_ELS_RING, cmdiocbq, 0);
 if (iocb_stat == IOCB_SUCCESS)
  return 0;
 else if (iocb_stat == IOCB_BUSY)
  rc = -EAGAIN;
 else
  rc = -EIO;



free_rmp:
 lpfc_free_bsg_buffers(phba, rmp);
free_cmp:
 lpfc_free_bsg_buffers(phba, cmp);
free_bmp:
 if (bmp->virt)
  lpfc_mbuf_free(phba, bmp->virt, bmp->phys);
 kfree(bmp);
free_cmdiocbq:
 lpfc_sli_release_iocbq(phba, cmdiocbq);
free_ndlp:
 lpfc_nlp_put(ndlp);
no_ndlp:
 kfree(dd_data);
no_dd_data:

 job->reply->result = rc;
 job->dd_data = ((void*)0);
 return rc;
}
