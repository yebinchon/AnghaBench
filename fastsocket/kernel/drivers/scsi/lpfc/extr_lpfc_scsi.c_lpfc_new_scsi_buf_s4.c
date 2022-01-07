
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct sli4_sge {int word2; void* sge_len; void* addr_lo; void* addr_hi; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_8__ {int bdeSize; int addrLow; int addrHigh; int bdeFlags; scalar_t__ ulpIoTag32; } ;
struct TYPE_9__ {TYPE_2__ bdl; } ;
struct TYPE_10__ {TYPE_3__ fcpi64; } ;
struct TYPE_11__ {int ulpBdeCount; int ulpLe; int ulpClass; TYPE_4__ un; } ;
struct TYPE_12__ {struct lpfc_scsi_buf* context1; TYPE_5__ iocb; int iocb_flag; int sli4_xritag; scalar_t__ sli4_lxritag; } ;
struct lpfc_scsi_buf {int list; scalar_t__ dma_phys_bpl; TYPE_6__ cur_iocbq; scalar_t__ dma_handle; scalar_t__ fcp_bpl; scalar_t__ fcp_cmnd; struct fcp_rsp* fcp_rsp; scalar_t__ data; } ;
struct TYPE_7__ {int scsi_xri_cnt; int * xri_ids; } ;
struct lpfc_hba {int cfg_sg_dma_buf_size; int scsi_buf_list_get_lock; TYPE_1__ sli4_hba; int lpfc_scsi_dma_buf_pool; scalar_t__ cfg_enable_bg; } ;
struct fcp_rsp {int dummy; } ;
struct fcp_cmnd {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
typedef TYPE_5__ IOCB_t ;


 int BUFF_TYPE_BDE_64 ;
 int CLASS3 ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int LIST_HEAD (int ) ;
 int LOG_BG ;
 int LOG_FCP ;
 int LPFC_IO_FCP ;
 scalar_t__ NO_XRI ;
 int SLI4_PAGE_SIZE ;
 int bf_set (int ,struct sli4_sge*,int) ;
 void* cpu_to_le32 (int) ;
 int kfree (struct lpfc_scsi_buf*) ;
 struct lpfc_scsi_buf* kzalloc (int,int ) ;
 void* le32_to_cpu (int) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,int,int,int,int,int) ;
 scalar_t__ lpfc_sli4_next_xritag (struct lpfc_hba*) ;
 int lpfc_sli4_post_scsi_sgl_list (struct lpfc_hba*,int *,int) ;
 int lpfc_sli4_sge_last ;
 scalar_t__ lpfc_sli_next_iotag (struct lpfc_hba*,TYPE_6__*) ;
 int memset (scalar_t__,int ,int) ;
 scalar_t__ pci_pool_alloc (int ,int ,scalar_t__*) ;
 int pci_pool_free (int ,scalar_t__,scalar_t__) ;
 int post_sblist ;
 int prep_sblist ;
 int putPaddrHigh (scalar_t__) ;
 int putPaddrLow (scalar_t__) ;
 int scsi_sblist ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
lpfc_new_scsi_buf_s4(struct lpfc_vport *vport, int num_to_alloc)
{
 struct lpfc_hba *phba = vport->phba;
 struct lpfc_scsi_buf *psb;
 struct sli4_sge *sgl;
 IOCB_t *iocb;
 dma_addr_t pdma_phys_fcp_cmd;
 dma_addr_t pdma_phys_fcp_rsp;
 dma_addr_t pdma_phys_bpl;
 uint16_t iotag, lxri = 0;
 int bcnt, num_posted, sgl_size;
 LIST_HEAD(prep_sblist);
 LIST_HEAD(post_sblist);
 LIST_HEAD(scsi_sblist);

 sgl_size = phba->cfg_sg_dma_buf_size -
  (sizeof(struct fcp_cmnd) + sizeof(struct fcp_rsp));

 lpfc_printf_vlog(vport, KERN_INFO, LOG_FCP,
    "9068 ALLOC %d scsi_bufs: %d (%d + %d + %d)\n",
    num_to_alloc, phba->cfg_sg_dma_buf_size, sgl_size,
    (int)sizeof(struct fcp_cmnd),
    (int)sizeof(struct fcp_rsp));

 for (bcnt = 0; bcnt < num_to_alloc; bcnt++) {
  psb = kzalloc(sizeof(struct lpfc_scsi_buf), GFP_KERNEL);
  if (!psb)
   break;






  psb->data = pci_pool_alloc(phba->lpfc_scsi_dma_buf_pool,
      GFP_KERNEL, &psb->dma_handle);
  if (!psb->data) {
   kfree(psb);
   break;
  }
  memset(psb->data, 0, phba->cfg_sg_dma_buf_size);





  if (phba->cfg_enable_bg && (((unsigned long)(psb->data) &
      (unsigned long)(SLI4_PAGE_SIZE - 1)) != 0)) {
   pci_pool_free(phba->lpfc_scsi_dma_buf_pool,
          psb->data, psb->dma_handle);
   kfree(psb);
   break;
  }


  iotag = lpfc_sli_next_iotag(phba, &psb->cur_iocbq);
  if (iotag == 0) {
   pci_pool_free(phba->lpfc_scsi_dma_buf_pool,
    psb->data, psb->dma_handle);
   kfree(psb);
   break;
  }

  lxri = lpfc_sli4_next_xritag(phba);
  if (lxri == NO_XRI) {
   pci_pool_free(phba->lpfc_scsi_dma_buf_pool,
         psb->data, psb->dma_handle);
   kfree(psb);
   break;
  }
  psb->cur_iocbq.sli4_lxritag = lxri;
  psb->cur_iocbq.sli4_xritag = phba->sli4_hba.xri_ids[lxri];
  psb->cur_iocbq.iocb_flag |= LPFC_IO_FCP;
  psb->fcp_bpl = psb->data;
  psb->fcp_cmnd = (psb->data + sgl_size);
  psb->fcp_rsp = (struct fcp_rsp *)((uint8_t *)psb->fcp_cmnd +
     sizeof(struct fcp_cmnd));


  sgl = (struct sli4_sge *)psb->fcp_bpl;
  pdma_phys_bpl = psb->dma_handle;
  pdma_phys_fcp_cmd = (psb->dma_handle + sgl_size);
  pdma_phys_fcp_rsp = pdma_phys_fcp_cmd + sizeof(struct fcp_cmnd);






  sgl->addr_hi = cpu_to_le32(putPaddrHigh(pdma_phys_fcp_cmd));
  sgl->addr_lo = cpu_to_le32(putPaddrLow(pdma_phys_fcp_cmd));
  sgl->word2 = le32_to_cpu(sgl->word2);
  bf_set(lpfc_sli4_sge_last, sgl, 0);
  sgl->word2 = cpu_to_le32(sgl->word2);
  sgl->sge_len = cpu_to_le32(sizeof(struct fcp_cmnd));
  sgl++;


  sgl->addr_hi = cpu_to_le32(putPaddrHigh(pdma_phys_fcp_rsp));
  sgl->addr_lo = cpu_to_le32(putPaddrLow(pdma_phys_fcp_rsp));
  sgl->word2 = le32_to_cpu(sgl->word2);
  bf_set(lpfc_sli4_sge_last, sgl, 1);
  sgl->word2 = cpu_to_le32(sgl->word2);
  sgl->sge_len = cpu_to_le32(sizeof(struct fcp_rsp));





  iocb = &psb->cur_iocbq.iocb;
  iocb->un.fcpi64.bdl.ulpIoTag32 = 0;
  iocb->un.fcpi64.bdl.bdeFlags = BUFF_TYPE_BDE_64;




  iocb->un.fcpi64.bdl.bdeSize = sizeof(struct fcp_cmnd);
  iocb->un.fcpi64.bdl.addrLow = putPaddrLow(pdma_phys_fcp_cmd);
  iocb->un.fcpi64.bdl.addrHigh = putPaddrHigh(pdma_phys_fcp_cmd);
  iocb->ulpBdeCount = 1;
  iocb->ulpLe = 1;
  iocb->ulpClass = CLASS3;
  psb->cur_iocbq.context1 = psb;
  psb->dma_phys_bpl = pdma_phys_bpl;


  list_add_tail(&psb->list, &post_sblist);
  spin_lock_irq(&phba->scsi_buf_list_get_lock);
  phba->sli4_hba.scsi_xri_cnt++;
  spin_unlock_irq(&phba->scsi_buf_list_get_lock);
 }
 lpfc_printf_log(phba, KERN_INFO, LOG_BG,
   "3021 Allocate %d out of %d requested new SCSI "
   "buffers\n", bcnt, num_to_alloc);


 if (!list_empty(&post_sblist))
  num_posted = lpfc_sli4_post_scsi_sgl_list(phba,
         &post_sblist, bcnt);
 else
  num_posted = 0;

 return num_posted;
}
