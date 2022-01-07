
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union lpfc_sli4_cfg_shdr {int dummy; } lpfc_sli4_cfg_shdr ;
typedef int uint32_t ;
typedef int uint16_t ;
struct mbox_header {int dummy; } ;
struct TYPE_2__ {int intr_enable; } ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
typedef int MAILBOX_t ;
typedef int LPFC_MBOXQ_t ;


 int EIO ;
 int ENOMEM ;
 int KERN_ERR ;
 int LOG_INIT ;
 int LPFC_MBOX_OPCODE_ALLOC_RSRC_EXTENT ;
 int LPFC_MBOX_SUBSYSTEM_COMMON ;
 int LPFC_SLI4_MBX_EMBED ;
 int LPFC_SLI4_MBX_NEMBED ;
 int MBX_POLL ;
 int lpfc_mbox_tmo_val (struct lpfc_hba*,int *) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int,int) ;
 int lpfc_sli4_config (struct lpfc_hba*,int *,int ,int ,int,int) ;
 int lpfc_sli4_mbox_rsrc_extent (struct lpfc_hba*,int *,int,int,int) ;
 int lpfc_sli_issue_mbox (struct lpfc_hba*,int *,int ) ;
 int lpfc_sli_issue_mbox_wait (struct lpfc_hba*,int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
lpfc_sli4_cfg_post_extnts(struct lpfc_hba *phba, uint16_t extnt_cnt,
     uint16_t type, bool *emb, LPFC_MBOXQ_t *mbox)
{
 int rc = 0;
 uint32_t req_len;
 uint32_t emb_len;
 uint32_t alloc_len, mbox_tmo;


 req_len = extnt_cnt * sizeof(uint16_t);





 emb_len = sizeof(MAILBOX_t) - sizeof(struct mbox_header) -
  sizeof(uint32_t);





 *emb = LPFC_SLI4_MBX_EMBED;
 if (req_len > emb_len) {
  req_len = extnt_cnt * sizeof(uint16_t) +
   sizeof(union lpfc_sli4_cfg_shdr) +
   sizeof(uint32_t);
  *emb = LPFC_SLI4_MBX_NEMBED;
 }

 alloc_len = lpfc_sli4_config(phba, mbox, LPFC_MBOX_SUBSYSTEM_COMMON,
         LPFC_MBOX_OPCODE_ALLOC_RSRC_EXTENT,
         req_len, *emb);
 if (alloc_len < req_len) {
  lpfc_printf_log(phba, KERN_ERR, LOG_INIT,
   "2982 Allocated DMA memory size (x%x) is "
   "less than the requested DMA memory "
   "size (x%x)\n", alloc_len, req_len);
  return -ENOMEM;
 }
 rc = lpfc_sli4_mbox_rsrc_extent(phba, mbox, extnt_cnt, type, *emb);
 if (unlikely(rc))
  return -EIO;

 if (!phba->sli4_hba.intr_enable)
  rc = lpfc_sli_issue_mbox(phba, mbox, MBX_POLL);
 else {
  mbox_tmo = lpfc_mbox_tmo_val(phba, mbox);
  rc = lpfc_sli_issue_mbox_wait(phba, mbox, mbox_tmo);
 }

 if (unlikely(rc))
  rc = -EIO;
 return rc;
}
