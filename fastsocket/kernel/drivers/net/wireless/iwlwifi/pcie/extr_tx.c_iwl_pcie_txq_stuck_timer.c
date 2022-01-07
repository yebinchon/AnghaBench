
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct iwl_queue {int id; scalar_t__ read_ptr; scalar_t__ write_ptr; int n_bd; } ;
struct iwl_txq {TYPE_3__* scratchbufs; struct iwl_queue q; int lock; struct iwl_trans_pcie* trans_pcie; } ;
struct iwl_trans_pcie {int scd_base_addr; int wd_timeout; } ;
struct iwl_trans {int op_mode; TYPE_2__* cfg; } ;
typedef int buf ;
struct TYPE_6__ {int scratch; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int num_of_queues; } ;


 int BIT (int ) ;
 int FH_TCSR_CHNL_NUM ;
 int FH_TX_TRB_REG (int) ;
 int IWL_ERR (struct iwl_trans*,char*,int,scalar_t__,...) ;
 int SCD_QUEUE_RDPTR (int) ;
 int SCD_QUEUE_STATUS_BITS (int) ;
 int SCD_QUEUE_STTS_REG_POS_ACTIVE ;
 int SCD_QUEUE_STTS_REG_POS_TXF ;
 int SCD_QUEUE_WRPTR (int) ;
 int SCD_TRANS_TBL_OFFSET_QUEUE (int) ;
 int SCD_TX_STTS_QUEUE_OFFSET (int) ;
 int iwl_op_mode_nic_error (int ) ;
 int iwl_print_hex_error (struct iwl_trans*,int*,int) ;
 int iwl_queue_inc_wrap (int,int) ;
 scalar_t__ iwl_read_direct32 (struct iwl_trans*,int ) ;
 int iwl_read_prph (struct iwl_trans*,int ) ;
 struct iwl_trans* iwl_trans_pcie_get_trans (struct iwl_trans_pcie*) ;
 int iwl_trans_read_mem32 (struct iwl_trans*,int) ;
 int iwl_trans_read_mem_bytes (struct iwl_trans*,int,int*,int) ;
 scalar_t__ jiffies_to_msecs (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void iwl_pcie_txq_stuck_timer(unsigned long data)
{
 struct iwl_txq *txq = (void *)data;
 struct iwl_queue *q = &txq->q;
 struct iwl_trans_pcie *trans_pcie = txq->trans_pcie;
 struct iwl_trans *trans = iwl_trans_pcie_get_trans(trans_pcie);
 u32 scd_sram_addr = trans_pcie->scd_base_addr +
    SCD_TX_STTS_QUEUE_OFFSET(txq->q.id);
 u8 buf[16];
 int i;

 spin_lock(&txq->lock);

 if (txq->q.read_ptr == txq->q.write_ptr) {
  spin_unlock(&txq->lock);
  return;
 }
 spin_unlock(&txq->lock);

 IWL_ERR(trans, "Queue %d stuck for %u ms.\n", txq->q.id,
  jiffies_to_msecs(trans_pcie->wd_timeout));
 IWL_ERR(trans, "Current SW read_ptr %d write_ptr %d\n",
  txq->q.read_ptr, txq->q.write_ptr);

 iwl_trans_read_mem_bytes(trans, scd_sram_addr, buf, sizeof(buf));

 iwl_print_hex_error(trans, buf, sizeof(buf));

 for (i = 0; i < FH_TCSR_CHNL_NUM; i++)
  IWL_ERR(trans, "FH TRBs(%d) = 0x%08x\n", i,
   iwl_read_direct32(trans, FH_TX_TRB_REG(i)));

 for (i = 0; i < trans->cfg->base_params->num_of_queues; i++) {
  u32 status = iwl_read_prph(trans, SCD_QUEUE_STATUS_BITS(i));
  u8 fifo = (status >> SCD_QUEUE_STTS_REG_POS_TXF) & 0x7;
  bool active = !!(status & BIT(SCD_QUEUE_STTS_REG_POS_ACTIVE));
  u32 tbl_dw =
   iwl_trans_read_mem32(trans,
          trans_pcie->scd_base_addr +
          SCD_TRANS_TBL_OFFSET_QUEUE(i));

  if (i & 0x1)
   tbl_dw = (tbl_dw & 0xFFFF0000) >> 16;
  else
   tbl_dw = tbl_dw & 0x0000FFFF;

  IWL_ERR(trans,
   "Q %d is %sactive and mapped to fifo %d ra_tid 0x%04x [%d,%d]\n",
   i, active ? "" : "in", fifo, tbl_dw,
   iwl_read_prph(trans,
          SCD_QUEUE_RDPTR(i)) & (txq->q.n_bd - 1),
   iwl_read_prph(trans, SCD_QUEUE_WRPTR(i)));
 }

 for (i = q->read_ptr; i != q->write_ptr;
      i = iwl_queue_inc_wrap(i, q->n_bd))
  IWL_ERR(trans, "scratch %d = 0x%08x\n", i,
   le32_to_cpu(txq->scratchbufs[i].scratch));

 iwl_op_mode_nic_error(trans->op_mode);
}
