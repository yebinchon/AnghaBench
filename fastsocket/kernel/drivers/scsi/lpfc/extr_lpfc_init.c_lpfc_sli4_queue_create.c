
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct lpfc_queue {int dummy; } ;
struct TYPE_2__ {struct lpfc_queue* dat_rq; int rq_ecount; int rq_esize; struct lpfc_queue* hdr_rq; struct lpfc_queue* els_wq; int wq_ecount; int wq_esize; struct lpfc_queue* mbx_wq; int mq_ecount; int mq_esize; struct lpfc_queue* els_cq; int cq_ecount; int cq_esize; struct lpfc_queue* mbx_cq; struct lpfc_queue** fcp_wq; struct lpfc_queue** fcp_cq; struct lpfc_queue** hba_eq; int eq_ecount; int eq_esize; void* fcp_cq_map; } ;
struct lpfc_hba {int cfg_fcp_io_channel; TYPE_1__ sli4_hba; } ;


 int ENOMEM ;
 int ERANGE ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_MQE_DEF_COUNT ;
 int LPFC_MQE_SIZE ;
 int LPFC_RQE_DEF_COUNT ;
 int LPFC_RQE_SIZE ;
 int LPFC_WQE_DEF_COUNT ;
 int LPFC_WQE_SIZE ;
 void* kzalloc (int,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,...) ;
 struct lpfc_queue* lpfc_sli4_queue_alloc (struct lpfc_hba*,int ,int ) ;
 int lpfc_sli4_queue_destroy (struct lpfc_hba*) ;

int
lpfc_sli4_queue_create(struct lpfc_hba *phba)
{
 struct lpfc_queue *qdesc;
 int idx;




 if (!phba->cfg_fcp_io_channel)
  return -ERANGE;

 phba->sli4_hba.mq_esize = LPFC_MQE_SIZE;
 phba->sli4_hba.mq_ecount = LPFC_MQE_DEF_COUNT;
 phba->sli4_hba.wq_esize = LPFC_WQE_SIZE;
 phba->sli4_hba.wq_ecount = LPFC_WQE_DEF_COUNT;
 phba->sli4_hba.rq_esize = LPFC_RQE_SIZE;
 phba->sli4_hba.rq_ecount = LPFC_RQE_DEF_COUNT;

 phba->sli4_hba.hba_eq = kzalloc((sizeof(struct lpfc_queue *) *
    phba->cfg_fcp_io_channel), GFP_KERNEL);
 if (!phba->sli4_hba.hba_eq) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2576 Failed allocate memory for "
   "fast-path EQ record array\n");
  goto out_error;
 }

 phba->sli4_hba.fcp_cq = kzalloc((sizeof(struct lpfc_queue *) *
    phba->cfg_fcp_io_channel), GFP_KERNEL);
 if (!phba->sli4_hba.fcp_cq) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2577 Failed allocate memory for fast-path "
    "CQ record array\n");
  goto out_error;
 }

 phba->sli4_hba.fcp_wq = kzalloc((sizeof(struct lpfc_queue *) *
    phba->cfg_fcp_io_channel), GFP_KERNEL);
 if (!phba->sli4_hba.fcp_wq) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2578 Failed allocate memory for fast-path "
    "WQ record array\n");
  goto out_error;
 }






 phba->sli4_hba.fcp_cq_map = kzalloc((sizeof(uint16_t) *
      phba->cfg_fcp_io_channel), GFP_KERNEL);
 if (!phba->sli4_hba.fcp_cq_map) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "2545 Failed allocate memory for fast-path "
    "CQ map\n");
  goto out_error;
 }





 for (idx = 0; idx < phba->cfg_fcp_io_channel; idx++) {


  qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.eq_esize,
           phba->sli4_hba.eq_ecount);
  if (!qdesc) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0497 Failed allocate EQ (%d)\n", idx);
   goto out_error;
  }
  phba->sli4_hba.hba_eq[idx] = qdesc;


  qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.cq_esize,
           phba->sli4_hba.cq_ecount);
  if (!qdesc) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0499 Failed allocate fast-path FCP "
     "CQ (%d)\n", idx);
   goto out_error;
  }
  phba->sli4_hba.fcp_cq[idx] = qdesc;


  qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.wq_esize,
           phba->sli4_hba.wq_ecount);
  if (!qdesc) {
   lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
     "0503 Failed allocate fast-path FCP "
     "WQ (%d)\n", idx);
   goto out_error;
  }
  phba->sli4_hba.fcp_wq[idx] = qdesc;
 }







 qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.cq_esize,
          phba->sli4_hba.cq_ecount);
 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0500 Failed allocate slow-path mailbox CQ\n");
  goto out_error;
 }
 phba->sli4_hba.mbx_cq = qdesc;


 qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.cq_esize,
          phba->sli4_hba.cq_ecount);
 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0501 Failed allocate slow-path ELS CQ\n");
  goto out_error;
 }
 phba->sli4_hba.els_cq = qdesc;
 qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.mq_esize,
          phba->sli4_hba.mq_ecount);
 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0505 Failed allocate slow-path MQ\n");
  goto out_error;
 }
 phba->sli4_hba.mbx_wq = qdesc;






 qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.wq_esize,
          phba->sli4_hba.wq_ecount);
 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0504 Failed allocate slow-path ELS WQ\n");
  goto out_error;
 }
 phba->sli4_hba.els_wq = qdesc;






 qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.rq_esize,
          phba->sli4_hba.rq_ecount);
 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0506 Failed allocate receive HRQ\n");
  goto out_error;
 }
 phba->sli4_hba.hdr_rq = qdesc;


 qdesc = lpfc_sli4_queue_alloc(phba, phba->sli4_hba.rq_esize,
          phba->sli4_hba.rq_ecount);
 if (!qdesc) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
    "0507 Failed allocate receive DRQ\n");
  goto out_error;
 }
 phba->sli4_hba.dat_rq = qdesc;

 return 0;

out_error:
 lpfc_sli4_queue_destroy(phba);
 return -ENOMEM;
}
