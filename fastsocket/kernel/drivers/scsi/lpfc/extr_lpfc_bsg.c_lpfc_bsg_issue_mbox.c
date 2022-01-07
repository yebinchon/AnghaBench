
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_74__ TYPE_9__ ;
typedef struct TYPE_73__ TYPE_8__ ;
typedef struct TYPE_72__ TYPE_7__ ;
typedef struct TYPE_71__ TYPE_6__ ;
typedef struct TYPE_70__ TYPE_5__ ;
typedef struct TYPE_69__ TYPE_4__ ;
typedef struct TYPE_68__ TYPE_3__ ;
typedef struct TYPE_67__ TYPE_33__ ;
typedef struct TYPE_66__ TYPE_31__ ;
typedef struct TYPE_65__ TYPE_30__ ;
typedef struct TYPE_64__ TYPE_2__ ;
typedef struct TYPE_63__ TYPE_29__ ;
typedef struct TYPE_62__ TYPE_28__ ;
typedef struct TYPE_61__ TYPE_27__ ;
typedef struct TYPE_60__ TYPE_26__ ;
typedef struct TYPE_59__ TYPE_25__ ;
typedef struct TYPE_58__ TYPE_24__ ;
typedef struct TYPE_57__ TYPE_23__ ;
typedef struct TYPE_56__ TYPE_22__ ;
typedef struct TYPE_55__ TYPE_21__ ;
typedef struct TYPE_54__ TYPE_20__ ;
typedef struct TYPE_53__ TYPE_1__ ;
typedef struct TYPE_52__ TYPE_19__ ;
typedef struct TYPE_51__ TYPE_18__ ;
typedef struct TYPE_50__ TYPE_17__ ;
typedef struct TYPE_49__ TYPE_16__ ;
typedef struct TYPE_48__ TYPE_15__ ;
typedef struct TYPE_47__ TYPE_14__ ;
typedef struct TYPE_46__ TYPE_13__ ;
typedef struct TYPE_45__ TYPE_12__ ;
typedef struct TYPE_44__ TYPE_11__ ;
typedef struct TYPE_43__ TYPE_10__ ;


struct TYPE_50__ {scalar_t__ co; } ;
struct TYPE_49__ {scalar_t__ type; } ;
struct TYPE_46__ {scalar_t__ bdeSize; } ;
struct TYPE_47__ {TYPE_13__ f; } ;
struct TYPE_48__ {TYPE_14__ tus; } ;
struct READ_EVENT_LOG_VAR {TYPE_15__ rcv_bde64; } ;
struct TYPE_72__ {scalar_t__ bdeSize; } ;
struct TYPE_73__ {TYPE_7__ f; } ;
struct TYPE_74__ {TYPE_8__ tus; void* addrLow; void* addrHigh; } ;
struct TYPE_71__ {void* addrLow; void* addrHigh; } ;
struct TYPE_43__ {TYPE_9__ xmit_bde64; TYPE_6__ rcv_bde64; } ;
struct TYPE_44__ {TYPE_10__ s2; } ;
struct TYPE_45__ {TYPE_11__ un; } ;
struct TYPE_58__ {scalar_t__* varWords; TYPE_17__ varUpdateCfg; TYPE_16__ varDmp; struct READ_EVENT_LOG_VAR varRdEventLog; TYPE_12__ varBIUdiag; } ;
struct TYPE_66__ {scalar_t__ mbxCommand; TYPE_24__ un; int mbxOwner; } ;
typedef TYPE_31__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_51__ {int bdeSize; } ;
struct TYPE_52__ {TYPE_18__ f; } ;
struct ulp_bde64 {void* addrLow; void* addrHigh; TYPE_19__ tus; } ;
struct mbox_header {int dummy; } ;
struct lpfc_vport {int fc_flag; } ;
struct TYPE_57__ {struct READ_EVENT_LOG_VAR cfg_mhdr; } ;
struct lpfc_mbx_sli4_config {TYPE_23__ header; } ;
struct lpfc_mbx_nembed_cmd {TYPE_25__* sge; } ;
struct TYPE_62__ {int sli_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int mbox_mem_pool; TYPE_28__ sli; TYPE_5__* pport; } ;
struct lpfc_dmabuf {scalar_t__ phys; scalar_t__ virt; } ;
struct TYPE_65__ {int payload_len; int sg_cnt; int sg_list; } ;
struct TYPE_69__ {int payload_len; int sg_cnt; int sg_list; } ;
struct fc_bsg_job {TYPE_30__ reply_payload; TYPE_29__* reply; struct bsg_job_data* dd_data; TYPE_4__ request_payload; TYPE_3__* request; } ;
struct dfc_mbox_req {int inExtWLen; int outExtWLen; int mbOffset; } ;
struct TYPE_60__ {int inExtWLen; int outExtWLen; int mbOffset; TYPE_31__* ext; TYPE_31__* mb; TYPE_33__* pmboxq; struct lpfc_dmabuf* dmabuffers; } ;
struct TYPE_61__ {TYPE_26__ mbox; } ;
struct bsg_job_data {TYPE_27__ context_un; struct fc_bsg_job* set_job; int type; } ;
struct TYPE_70__ {scalar_t__ stopped; } ;
struct TYPE_53__ {scalar_t__ vendor_cmd; } ;
struct TYPE_64__ {TYPE_1__ h_vendor; } ;
struct TYPE_68__ {TYPE_2__ rqst_data; } ;
struct TYPE_54__ {struct lpfc_mbx_sli4_config sli4_config; } ;
struct TYPE_55__ {TYPE_20__ un; } ;
struct TYPE_56__ {TYPE_21__ mqe; TYPE_31__ mb; } ;
struct TYPE_67__ {int in_ext_byte_len; int out_ext_byte_len; struct bsg_job_data* context1; int mbox_cmpl; TYPE_22__ u; int mbox_offset_word; TYPE_31__* context2; struct lpfc_vport* vport; } ;
struct TYPE_63__ {int reply_payload_rcv_len; } ;
struct TYPE_59__ {scalar_t__ length; void* pa_lo; void* pa_hi; } ;
typedef TYPE_31__ MAILBOX_t ;
typedef TYPE_33__ LPFC_MBOXQ_t ;


 int BSG_MBOX_SIZE ;
 scalar_t__ DMP_WELL_KNOWN ;
 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int ERANGE ;
 int ETIME ;
 int FC_OFFLINE_MODE ;
 int GFP_KERNEL ;
 int KERN_WARNING ;
 int LOG_LIBDFC ;
 int LOG_MBOX ;
 int LPFC_BLOCK_MGMT_IO ;
 int LPFC_SLI_ACTIVE ;
 scalar_t__ LPFC_SLI_REV4 ;
 int MBX_BUSY ;
 scalar_t__ MBX_DUMP_MEMORY ;
 int MBX_NOWAIT ;
 int MBX_POLL ;
 scalar_t__ MBX_READ_EVENT_LOG ;
 scalar_t__ MBX_RESTART ;
 scalar_t__ MBX_RUN_BIU_DIAG64 ;
 scalar_t__ MBX_SLI4_CONFIG ;
 int MBX_SUCCESS ;
 int MBX_TIMEOUT ;
 scalar_t__ MBX_UPDATE_CFG ;
 scalar_t__ MBX_WRITE_VPARMS ;
 scalar_t__ MBX_WRITE_WWN ;
 int OWN_HOST ;
 int SLI_CONFIG_HANDLED ;
 int TYPE_MBOX ;
 scalar_t__ bf_get (int ,struct READ_EVENT_LOG_VAR*) ;
 int kfree (struct bsg_job_data*) ;
 struct bsg_job_data* kmalloc (int,int ) ;
 int lpfc_bsg_check_cmd_access (struct lpfc_hba*,TYPE_31__*,struct lpfc_vport*) ;
 struct lpfc_dmabuf* lpfc_bsg_dma_page_alloc (struct lpfc_hba*) ;
 int lpfc_bsg_dma_page_free (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_bsg_handle_sli_cfg_ext (struct lpfc_hba*,struct fc_bsg_job*,struct lpfc_dmabuf*) ;
 int lpfc_bsg_issue_mbox_cmpl ;
 int lpfc_event_log ;
 int lpfc_mbox_hdr_emb ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_33__*,int ) ;
 int memcpy (TYPE_31__*,TYPE_31__*,int) ;
 TYPE_33__* mempool_alloc (int ,int ) ;
 int mempool_free (TYPE_33__*,int ) ;
 int memset (TYPE_33__*,int ,int) ;
 void* putPaddrHigh (scalar_t__) ;
 void* putPaddrLow (scalar_t__) ;
 int sg_copy_from_buffer (int ,int ,TYPE_31__*,scalar_t__) ;
 int sg_copy_to_buffer (int ,int ,TYPE_31__*,scalar_t__) ;

__attribute__((used)) static uint32_t
lpfc_bsg_issue_mbox(struct lpfc_hba *phba, struct fc_bsg_job *job,
 struct lpfc_vport *vport)
{
 LPFC_MBOXQ_t *pmboxq = ((void*)0);
 MAILBOX_t *pmb;

 uint8_t *pmbx = ((void*)0);
 struct bsg_job_data *dd_data = ((void*)0);
 struct lpfc_dmabuf *dmabuf = ((void*)0);
 struct dfc_mbox_req *mbox_req;
 struct READ_EVENT_LOG_VAR *rdEventLog;
 uint32_t transmit_length, receive_length, mode;
 struct lpfc_mbx_sli4_config *sli4_config;
 struct lpfc_mbx_nembed_cmd *nembed_sge;
 struct mbox_header *header;
 struct ulp_bde64 *bde;
 uint8_t *ext = ((void*)0);
 int rc = 0;
 uint8_t *from;
 uint32_t size;


 job->reply->reply_payload_rcv_len = 0;


 if (job->reply_payload.payload_len > BSG_MBOX_SIZE ||
     job->request_payload.payload_len > BSG_MBOX_SIZE) {
  rc = -ERANGE;
  goto job_done;
 }





  if (phba->sli.sli_flag & LPFC_BLOCK_MGMT_IO) {
  rc = -EAGAIN;
  goto job_done;
 }

 mbox_req =
     (struct dfc_mbox_req *)job->request->rqst_data.h_vendor.vendor_cmd;


 if ((mbox_req->inExtWLen > BSG_MBOX_SIZE/sizeof(uint32_t)) ||
     (mbox_req->outExtWLen > BSG_MBOX_SIZE/sizeof(uint32_t))) {
  rc = -ERANGE;
  goto job_done;
 }

 dmabuf = lpfc_bsg_dma_page_alloc(phba);
 if (!dmabuf || !dmabuf->virt) {
  rc = -ENOMEM;
  goto job_done;
 }


 pmbx = (uint8_t *)dmabuf->virt;
 size = job->request_payload.payload_len;
 sg_copy_to_buffer(job->request_payload.sg_list,
     job->request_payload.sg_cnt, pmbx, size);


 if (phba->sli_rev == LPFC_SLI_REV4) {
  rc = lpfc_bsg_handle_sli_cfg_ext(phba, job, dmabuf);
  if (rc == SLI_CONFIG_HANDLED)
   goto job_cont;
  if (rc)
   goto job_done;

 }

 rc = lpfc_bsg_check_cmd_access(phba, (MAILBOX_t *)pmbx, vport);
 if (rc != 0)
  goto job_done;


 dd_data = kmalloc(sizeof(struct bsg_job_data), GFP_KERNEL);
 if (!dd_data) {
  lpfc_printf_log(phba, KERN_WARNING, LOG_LIBDFC,
    "2727 Failed allocation of dd_data\n");
  rc = -ENOMEM;
  goto job_done;
 }

 pmboxq = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
 if (!pmboxq) {
  rc = -ENOMEM;
  goto job_done;
 }
 memset(pmboxq, 0, sizeof(LPFC_MBOXQ_t));

 pmb = &pmboxq->u.mb;
 memcpy(pmb, pmbx, sizeof(*pmb));
 pmb->mbxOwner = OWN_HOST;
 pmboxq->vport = vport;




 if (phba->pport->stopped &&
     pmb->mbxCommand != MBX_DUMP_MEMORY &&
     pmb->mbxCommand != MBX_RESTART &&
     pmb->mbxCommand != MBX_WRITE_VPARMS &&
     pmb->mbxCommand != MBX_WRITE_WWN)
  lpfc_printf_log(phba, KERN_WARNING, LOG_MBOX,
    "2797 mbox: Issued mailbox cmd "
    "0x%x while in stopped state.\n",
    pmb->mbxCommand);


 if (mbox_req->inExtWLen || mbox_req->outExtWLen) {
  from = pmbx;
  ext = from + sizeof(MAILBOX_t);
  pmboxq->context2 = ext;
  pmboxq->in_ext_byte_len =
   mbox_req->inExtWLen * sizeof(uint32_t);
  pmboxq->out_ext_byte_len =
   mbox_req->outExtWLen * sizeof(uint32_t);
  pmboxq->mbox_offset_word = mbox_req->mbOffset;
 }





 if (pmb->mbxCommand == MBX_RUN_BIU_DIAG64) {
  transmit_length = pmb->un.varWords[1];
  receive_length = pmb->un.varWords[4];



  if ((transmit_length > receive_length) ||
   (transmit_length > BSG_MBOX_SIZE - sizeof(MAILBOX_t))) {
   rc = -ERANGE;
   goto job_done;
  }
  pmb->un.varBIUdiag.un.s2.xmit_bde64.addrHigh =
   putPaddrHigh(dmabuf->phys + sizeof(MAILBOX_t));
  pmb->un.varBIUdiag.un.s2.xmit_bde64.addrLow =
   putPaddrLow(dmabuf->phys + sizeof(MAILBOX_t));

  pmb->un.varBIUdiag.un.s2.rcv_bde64.addrHigh =
   putPaddrHigh(dmabuf->phys + sizeof(MAILBOX_t)
     + pmb->un.varBIUdiag.un.s2.xmit_bde64.tus.f.bdeSize);
  pmb->un.varBIUdiag.un.s2.rcv_bde64.addrLow =
   putPaddrLow(dmabuf->phys + sizeof(MAILBOX_t)
     + pmb->un.varBIUdiag.un.s2.xmit_bde64.tus.f.bdeSize);
 } else if (pmb->mbxCommand == MBX_READ_EVENT_LOG) {
  rdEventLog = &pmb->un.varRdEventLog;
  receive_length = rdEventLog->rcv_bde64.tus.f.bdeSize;
  mode = bf_get(lpfc_event_log, rdEventLog);




  if (receive_length > BSG_MBOX_SIZE - sizeof(MAILBOX_t)) {
   rc = -ERANGE;
   goto job_done;
  }


  if (mode == 0) {
   pmb->un.varWords[3] = putPaddrLow(dmabuf->phys
       + sizeof(MAILBOX_t));
   pmb->un.varWords[4] = putPaddrHigh(dmabuf->phys
       + sizeof(MAILBOX_t));
  }
 } else if (phba->sli_rev == LPFC_SLI_REV4) {




  if ((pmb->mbxCommand == MBX_DUMP_MEMORY) &&
   (pmb->un.varDmp.type != DMP_WELL_KNOWN)) {



   receive_length = pmb->un.varWords[2];



   if (receive_length == 0) {
    rc = -ERANGE;
    goto job_done;
   }
   pmb->un.varWords[3] = putPaddrLow(dmabuf->phys
      + sizeof(MAILBOX_t));
   pmb->un.varWords[4] = putPaddrHigh(dmabuf->phys
      + sizeof(MAILBOX_t));
  } else if ((pmb->mbxCommand == MBX_UPDATE_CFG) &&
   pmb->un.varUpdateCfg.co) {
   bde = (struct ulp_bde64 *)&pmb->un.varWords[4];


   if (bde->tus.f.bdeSize >
       BSG_MBOX_SIZE - sizeof(MAILBOX_t)) {
    rc = -ERANGE;
    goto job_done;
   }
   bde->addrHigh = putPaddrHigh(dmabuf->phys
      + sizeof(MAILBOX_t));
   bde->addrLow = putPaddrLow(dmabuf->phys
      + sizeof(MAILBOX_t));
  } else if (pmb->mbxCommand == MBX_SLI4_CONFIG) {

   sli4_config = &pmboxq->u.mqe.un.sli4_config;
   if (!bf_get(lpfc_mbox_hdr_emb,
       &sli4_config->header.cfg_mhdr)) {



    header = (struct mbox_header *)
      &pmb->un.varWords[0];
    nembed_sge = (struct lpfc_mbx_nembed_cmd *)
      &pmb->un.varWords[0];
    receive_length = nembed_sge->sge[0].length;




    if ((receive_length == 0) ||
        (receive_length >
         BSG_MBOX_SIZE - sizeof(MAILBOX_t))) {
     rc = -ERANGE;
     goto job_done;
    }

    nembed_sge->sge[0].pa_hi =
      putPaddrHigh(dmabuf->phys
         + sizeof(MAILBOX_t));
    nembed_sge->sge[0].pa_lo =
      putPaddrLow(dmabuf->phys
         + sizeof(MAILBOX_t));
   }
  }
 }

 dd_data->context_un.mbox.dmabuffers = dmabuf;


 pmboxq->mbox_cmpl = lpfc_bsg_issue_mbox_cmpl;


 pmboxq->context1 = dd_data;
 dd_data->type = TYPE_MBOX;
 dd_data->set_job = job;
 dd_data->context_un.mbox.pmboxq = pmboxq;
 dd_data->context_un.mbox.mb = (MAILBOX_t *)pmbx;
 dd_data->context_un.mbox.ext = ext;
 dd_data->context_un.mbox.mbOffset = mbox_req->mbOffset;
 dd_data->context_un.mbox.inExtWLen = mbox_req->inExtWLen;
 dd_data->context_un.mbox.outExtWLen = mbox_req->outExtWLen;
 job->dd_data = dd_data;

 if ((vport->fc_flag & FC_OFFLINE_MODE) ||
     (!(phba->sli.sli_flag & LPFC_SLI_ACTIVE))) {
  rc = lpfc_sli_issue_mbox(phba, pmboxq, MBX_POLL);
  if (rc != MBX_SUCCESS) {
   rc = (rc == MBX_TIMEOUT) ? -ETIME : -ENODEV;
   goto job_done;
  }


  memcpy(pmbx, pmb, sizeof(*pmb));
  job->reply->reply_payload_rcv_len =
   sg_copy_from_buffer(job->reply_payload.sg_list,
         job->reply_payload.sg_cnt,
         pmbx, size);

  rc = 0;
  goto job_done;
 }

 rc = lpfc_sli_issue_mbox(phba, pmboxq, MBX_NOWAIT);
 if ((rc == MBX_SUCCESS) || (rc == MBX_BUSY))
  return 1;

job_done:

 if (pmboxq)
  mempool_free(pmboxq, phba->mbox_mem_pool);
 lpfc_bsg_dma_page_free(phba, dmabuf);
 kfree(dd_data);

job_cont:
 return rc;
}
