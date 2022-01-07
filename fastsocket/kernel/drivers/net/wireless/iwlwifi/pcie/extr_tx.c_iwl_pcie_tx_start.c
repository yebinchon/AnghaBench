
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {int dma; } ;
struct iwl_trans_pcie {scalar_t__ scd_base_addr; int cmd_fifo; int cmd_queue; TYPE_3__ scd_bc_tbls; int queue_used; int queue_stopped; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_5__ {TYPE_1__* base_params; } ;
struct TYPE_4__ {int num_of_queues; } ;


 int APMG_PCIDEV_STT_REG ;
 int APMG_PCIDEV_STT_VAL_L1_ACT_DIS ;
 int FH_TCSR_CHNL_NUM ;
 int FH_TCSR_CHNL_TX_CONFIG_REG (int) ;
 scalar_t__ FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ;
 scalar_t__ FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE ;
 int FH_TX_CHICKEN_BITS_REG ;
 scalar_t__ FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN ;
 int IWL_MASK (int ,int) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int SCD_CHAINEXT_EN ;
 int SCD_CONTEXT_MEM_LOWER_BOUND ;
 int SCD_DRAM_BASE_ADDR ;
 int SCD_SRAM_BASE_ADDR ;
 int SCD_TRANS_TBL_OFFSET_QUEUE (int) ;
 int WARN_ON (int) ;
 int iwl_clear_bits_prph (struct iwl_trans*,int ,int ) ;
 int iwl_pcie_txq_set_sched (struct iwl_trans*,int ) ;
 scalar_t__ iwl_read_direct32 (struct iwl_trans*,int ) ;
 scalar_t__ iwl_read_prph (struct iwl_trans*,int ) ;
 int iwl_trans_ac_txq_enable (struct iwl_trans*,int ,int ) ;
 int iwl_trans_write_mem (struct iwl_trans*,int,int *,int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,scalar_t__) ;
 int iwl_write_prph (struct iwl_trans*,int ,int) ;
 int memset (int ,int ,int) ;

void iwl_pcie_tx_start(struct iwl_trans *trans, u32 scd_base_addr)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int nq = trans->cfg->base_params->num_of_queues;
 int chan;
 u32 reg_val;
 int clear_dwords = (SCD_TRANS_TBL_OFFSET_QUEUE(nq) -
    SCD_CONTEXT_MEM_LOWER_BOUND) / sizeof(u32);


 memset(trans_pcie->queue_stopped, 0, sizeof(trans_pcie->queue_stopped));
 memset(trans_pcie->queue_used, 0, sizeof(trans_pcie->queue_used));

 trans_pcie->scd_base_addr =
  iwl_read_prph(trans, SCD_SRAM_BASE_ADDR);

 WARN_ON(scd_base_addr != 0 &&
  scd_base_addr != trans_pcie->scd_base_addr);


 iwl_trans_write_mem(trans, trans_pcie->scd_base_addr +
       SCD_CONTEXT_MEM_LOWER_BOUND,
       ((void*)0), clear_dwords);

 iwl_write_prph(trans, SCD_DRAM_BASE_ADDR,
         trans_pcie->scd_bc_tbls.dma >> 10);




 iwl_write_prph(trans, SCD_CHAINEXT_EN, 0);

 iwl_trans_ac_txq_enable(trans, trans_pcie->cmd_queue,
    trans_pcie->cmd_fifo);


 iwl_pcie_txq_set_sched(trans, IWL_MASK(0, 7));


 for (chan = 0; chan < FH_TCSR_CHNL_NUM; chan++)
  iwl_write_direct32(trans, FH_TCSR_CHNL_TX_CONFIG_REG(chan),
       FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE |
       FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_ENABLE);


 reg_val = iwl_read_direct32(trans, FH_TX_CHICKEN_BITS_REG);
 iwl_write_direct32(trans, FH_TX_CHICKEN_BITS_REG,
      reg_val | FH_TX_CHICKEN_BITS_SCD_AUTO_RETRY_EN);


 iwl_clear_bits_prph(trans, APMG_PCIDEV_STT_REG,
       APMG_PCIDEV_STT_VAL_L1_ACT_DIS);
}
