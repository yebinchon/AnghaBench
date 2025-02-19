
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct lpfc_sli_config_mbox {int dummy; } ;
struct TYPE_19__ {scalar_t__ seqNum; int nembType; scalar_t__ numBuf; int state; TYPE_13__* mbx_dmabuf; int ext_dmabuf_list; } ;
struct lpfc_hba {TYPE_5__ mbox_ext_buf_ctx; int pport; int mbox_mem_pool; } ;
struct lpfc_dmabuf {int list; scalar_t__ virt; } ;
struct TYPE_15__ {scalar_t__ payload_len; int sg_cnt; int sg_list; } ;
struct fc_bsg_job {int (* job_done ) (struct fc_bsg_job*) ;TYPE_6__* reply; struct bsg_job_data* dd_data; TYPE_1__ request_payload; } ;
struct TYPE_17__ {TYPE_7__* mb; TYPE_8__* pmboxq; } ;
struct TYPE_18__ {TYPE_3__ mbox; } ;
struct bsg_job_data {TYPE_4__ context_un; struct fc_bsg_job* set_job; int type; } ;
typedef enum nemb_type { ____Placeholder_nemb_type } nemb_type ;
struct TYPE_21__ {int mbxOwner; } ;
struct TYPE_16__ {TYPE_7__ mb; } ;
struct TYPE_22__ {struct bsg_job_data* context1; int mbox_cmpl; int vport; TYPE_2__ u; } ;
struct TYPE_20__ {scalar_t__ result; } ;
struct TYPE_14__ {scalar_t__ virt; } ;
typedef TYPE_7__ MAILBOX_t ;
typedef TYPE_8__ LPFC_MBOXQ_t ;


 int ENOMEM ;
 int EPIPE ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int KERN_INFO ;
 int LOG_LIBDFC ;
 int LPFC_BSG_MBOX_PORT ;
 int MBX_BUSY ;
 int MBX_NOWAIT ;
 int MBX_SUCCESS ;
 int OWN_HOST ;
 int SLI_CONFIG_HANDLED ;
 int TYPE_MBOX ;
 int dma_ebuf ;
 int kfree (struct bsg_job_data*) ;
 struct bsg_job_data* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int lpfc_bsg_dma_page_free (struct lpfc_hba*,struct lpfc_dmabuf*) ;
 int lpfc_bsg_issue_write_mbox_ext_cmpl ;
 int lpfc_bsg_sli_cfg_dma_desc_setup (struct lpfc_hba*,int,scalar_t__,TYPE_13__*,struct lpfc_dmabuf*) ;
 int lpfc_idiag_mbxacc_dump_bsg_mbox (struct lpfc_hba*,scalar_t__,int ,int ,int ,struct lpfc_dmabuf*,scalar_t__) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,...) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,TYPE_8__*,int ) ;
 int mbox_wr ;
 int memcpy (TYPE_7__*,int *,int) ;
 TYPE_8__* mempool_alloc (int ,int ) ;
 int memset (TYPE_8__*,int ,int) ;
 scalar_t__ nemb_mse ;
 int sg_copy_to_buffer (int ,int ,int *,scalar_t__) ;
 int sta_pos_addr ;
 int stub1 (struct fc_bsg_job*) ;

__attribute__((used)) static int
lpfc_bsg_write_ebuf_set(struct lpfc_hba *phba, struct fc_bsg_job *job,
   struct lpfc_dmabuf *dmabuf)
{
 struct lpfc_sli_config_mbox *sli_cfg_mbx;
 struct bsg_job_data *dd_data = ((void*)0);
 LPFC_MBOXQ_t *pmboxq = ((void*)0);
 MAILBOX_t *pmb;
 enum nemb_type nemb_tp;
 uint8_t *pbuf;
 uint32_t size;
 uint32_t index;
 int rc;

 index = phba->mbox_ext_buf_ctx.seqNum;
 phba->mbox_ext_buf_ctx.seqNum++;
 nemb_tp = phba->mbox_ext_buf_ctx.nembType;

 sli_cfg_mbx = (struct lpfc_sli_config_mbox *)
   phba->mbox_ext_buf_ctx.mbx_dmabuf->virt;

 dd_data = kmalloc(sizeof(struct bsg_job_data), GFP_KERNEL);
 if (!dd_data) {
  rc = -ENOMEM;
  goto job_error;
 }

 pbuf = (uint8_t *)dmabuf->virt;
 size = job->request_payload.payload_len;
 sg_copy_to_buffer(job->request_payload.sg_list,
     job->request_payload.sg_cnt,
     pbuf, size);

 if (phba->mbox_ext_buf_ctx.nembType == nemb_mse) {
  lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
    "2966 SLI_CONFIG (mse) ext-buffer wr set "
    "buffer[%d], size:%d\n",
    phba->mbox_ext_buf_ctx.seqNum, size);

 } else {
  lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
    "2967 SLI_CONFIG (hbd) ext-buffer wr set "
    "buffer[%d], size:%d\n",
    phba->mbox_ext_buf_ctx.seqNum, size);

 }


 lpfc_bsg_sli_cfg_dma_desc_setup(phba, nemb_tp, index,
     phba->mbox_ext_buf_ctx.mbx_dmabuf,
     dmabuf);
 list_add_tail(&dmabuf->list, &phba->mbox_ext_buf_ctx.ext_dmabuf_list);


 lpfc_idiag_mbxacc_dump_bsg_mbox(phba, phba->mbox_ext_buf_ctx.nembType,
     mbox_wr, dma_ebuf, sta_pos_addr,
     dmabuf, index);

 if (phba->mbox_ext_buf_ctx.seqNum == phba->mbox_ext_buf_ctx.numBuf) {
  lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
    "2968 SLI_CONFIG ext-buffer wr all %d "
    "ebuffers received\n",
    phba->mbox_ext_buf_ctx.numBuf);

  pmboxq = mempool_alloc(phba->mbox_mem_pool, GFP_KERNEL);
  if (!pmboxq) {
   rc = -ENOMEM;
   goto job_error;
  }
  memset(pmboxq, 0, sizeof(LPFC_MBOXQ_t));
  pbuf = (uint8_t *)phba->mbox_ext_buf_ctx.mbx_dmabuf->virt;
  pmb = &pmboxq->u.mb;
  memcpy(pmb, pbuf, sizeof(*pmb));
  pmb->mbxOwner = OWN_HOST;
  pmboxq->vport = phba->pport;


  pmboxq->mbox_cmpl = lpfc_bsg_issue_write_mbox_ext_cmpl;


  pmboxq->context1 = dd_data;
  dd_data->type = TYPE_MBOX;
  dd_data->set_job = job;
  dd_data->context_un.mbox.pmboxq = pmboxq;
  dd_data->context_un.mbox.mb = (MAILBOX_t *)pbuf;
  job->dd_data = dd_data;


  phba->mbox_ext_buf_ctx.state = LPFC_BSG_MBOX_PORT;

  rc = lpfc_sli_issue_mbox(phba, pmboxq, MBX_NOWAIT);
  if ((rc == MBX_SUCCESS) || (rc == MBX_BUSY)) {
   lpfc_printf_log(phba, KERN_INFO, LOG_LIBDFC,
     "2969 Issued SLI_CONFIG ext-buffer "
     "maibox command, rc:x%x\n", rc);
   return SLI_CONFIG_HANDLED;
  }
  lpfc_printf_log(phba, KERN_ERR, LOG_LIBDFC,
    "2970 Failed to issue SLI_CONFIG ext-buffer "
    "maibox command, rc:x%x\n", rc);
  rc = -EPIPE;
  goto job_error;
 }


 job->reply->result = 0;
 job->job_done(job);
 return SLI_CONFIG_HANDLED;

job_error:
 lpfc_bsg_dma_page_free(phba, dmabuf);
 kfree(dd_data);

 return rc;
}
