
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_ctrl_info {int pdev; int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_dma_mem {int dma; int va; int size; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 int EIO ;
 int ENOMEM ;
 int KERN_ERR ;
 unsigned int alloc_mcc_tag (struct beiscsi_hba*) ;
 int be_mcc_notify (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int ,int,int) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*) ;
 int beiscsi_mccq_compl (struct beiscsi_hba*,unsigned int,int *,int ) ;
 void* cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;
 int memcpy (void*,int ,int) ;
 int memset (struct be_mcc_wrb*,int ,int) ;
 struct be_sge* nonembedded_sgl (struct be_mcc_wrb*) ;
 int pci_free_consistent (int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int upper_32_bits (int ) ;
 struct be_mcc_wrb* wrb_from_mccq (struct beiscsi_hba*) ;

__attribute__((used)) static int mgmt_exec_nonemb_cmd(struct beiscsi_hba *phba,
    struct be_dma_mem *nonemb_cmd, void *resp_buf,
    int resp_buf_len)
{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb = wrb_from_mccq(phba);
 struct be_sge *sge;
 unsigned int tag;
 int rc = 0;

 spin_lock(&ctrl->mbox_lock);
 tag = alloc_mcc_tag(phba);
 if (!tag) {
  spin_unlock(&ctrl->mbox_lock);
  rc = -ENOMEM;
  goto free_cmd;
 }
 memset(wrb, 0, sizeof(*wrb));
 wrb->tag0 |= tag;
 sge = nonembedded_sgl(wrb);

 be_wrb_hdr_prepare(wrb, nonemb_cmd->size, 0, 1);
 sge->pa_hi = cpu_to_le32(upper_32_bits(nonemb_cmd->dma));
 sge->pa_lo = cpu_to_le32(lower_32_bits(nonemb_cmd->dma));
 sge->len = cpu_to_le32(nonemb_cmd->size);

 be_mcc_notify(phba);
 spin_unlock(&ctrl->mbox_lock);

 rc = beiscsi_mccq_compl(phba, tag, ((void*)0), nonemb_cmd->va);
 if (rc) {
  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BG_%d : mgmt_exec_nonemb_cmd Failed status\n");

  rc = -EIO;
  goto free_cmd;
 }

 if (resp_buf)
  memcpy(resp_buf, nonemb_cmd->va, resp_buf_len);

free_cmd:
 pci_free_consistent(ctrl->pdev, nonemb_cmd->size,
       nonemb_cmd->va, nonemb_cmd->dma);
 return rc;
}
