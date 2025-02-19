
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct invalidate_commands_params_in {int icd_count; TYPE_1__* table; int cleanup_type; scalar_t__ ref_handle; int hdr; } ;
struct invalidate_command_table {int cid; int icd; } ;
struct be_ctrl_info {int mbox_lock; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_sge {void* len; void* pa_lo; void* pa_hi; } ;
struct be_mcc_wrb {unsigned int tag0; } ;
struct be_dma_mem {int dma; int size; struct invalidate_commands_params_in* va; } ;
struct TYPE_2__ {int cid; int icd; } ;


 int CMD_ISCSI_COMMAND_INVALIDATE ;
 int CMD_SUBSYSTEM_ISCSI ;
 int OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS ;
 unsigned int alloc_mcc_tag (struct beiscsi_hba*) ;
 int be_cmd_hdr_prepare (int *,int ,int ,int) ;
 int be_mcc_notify (struct beiscsi_hba*) ;
 int be_wrb_hdr_prepare (struct be_mcc_wrb*,int,int,int) ;
 void* cpu_to_le32 (int) ;
 int memset (struct invalidate_commands_params_in*,int ,int) ;
 struct be_sge* nonembedded_sgl (struct be_mcc_wrb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int upper_32_bits (int) ;
 struct be_mcc_wrb* wrb_from_mccq (struct beiscsi_hba*) ;

unsigned int mgmt_invalidate_icds(struct beiscsi_hba *phba,
    struct invalidate_command_table *inv_tbl,
    unsigned int num_invalidate, unsigned int cid,
    struct be_dma_mem *nonemb_cmd)

{
 struct be_ctrl_info *ctrl = &phba->ctrl;
 struct be_mcc_wrb *wrb;
 struct be_sge *sge;
 struct invalidate_commands_params_in *req;
 unsigned int i, tag = 0;

 spin_lock(&ctrl->mbox_lock);
 tag = alloc_mcc_tag(phba);
 if (!tag) {
  spin_unlock(&ctrl->mbox_lock);
  return tag;
 }

 req = nonemb_cmd->va;
 memset(req, 0, sizeof(*req));
 wrb = wrb_from_mccq(phba);
 sge = nonembedded_sgl(wrb);
 wrb->tag0 |= tag;

 be_wrb_hdr_prepare(wrb, sizeof(*req), 0, 1);
 be_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_ISCSI,
   OPCODE_COMMON_ISCSI_ERROR_RECOVERY_INVALIDATE_COMMANDS,
   sizeof(*req));
 req->ref_handle = 0;
 req->cleanup_type = CMD_ISCSI_COMMAND_INVALIDATE;
 for (i = 0; i < num_invalidate; i++) {
  req->table[i].icd = inv_tbl->icd;
  req->table[i].cid = inv_tbl->cid;
  req->icd_count++;
  inv_tbl++;
 }
 sge->pa_hi = cpu_to_le32(upper_32_bits(nonemb_cmd->dma));
 sge->pa_lo = cpu_to_le32(nonemb_cmd->dma & 0xFFFFFFFF);
 sge->len = cpu_to_le32(nonemb_cmd->size);

 be_mcc_notify(phba);
 spin_unlock(&ctrl->mbox_lock);
 return tag;
}
