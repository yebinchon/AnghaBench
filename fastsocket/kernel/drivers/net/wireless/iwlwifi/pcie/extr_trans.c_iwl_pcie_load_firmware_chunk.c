
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans_pcie {int ucode_write_complete; int ucode_write_waitq; } ;
struct iwl_trans {int dummy; } ;
typedef int dma_addr_t ;


 int ETIMEDOUT ;
 int FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK ;
 int FH_MEM_TFDIB_REG1_ADDR_BITSHIFT ;
 int FH_SRVC_CHNL ;
 int FH_SRVC_CHNL_SRAM_ADDR_REG (int ) ;
 int FH_TCSR_CHNL_TX_BUF_STS_REG (int ) ;
 int FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX ;
 int FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM ;
 int FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID ;
 int FH_TCSR_CHNL_TX_CONFIG_REG (int ) ;
 int FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD ;
 int FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE ;
 int FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE ;
 int FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE ;
 int FH_TFDIB_CTRL0_REG (int ) ;
 int FH_TFDIB_CTRL1_REG (int ) ;
 int HZ ;
 int IWL_ERR (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int iwl_get_dma_hi_addr (int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int) ;
 int wait_event_timeout (int ,int,int) ;

__attribute__((used)) static int iwl_pcie_load_firmware_chunk(struct iwl_trans *trans, u32 dst_addr,
       dma_addr_t phy_addr, u32 byte_cnt)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret;

 trans_pcie->ucode_write_complete = 0;

 iwl_write_direct32(trans,
      FH_TCSR_CHNL_TX_CONFIG_REG(FH_SRVC_CHNL),
      FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_PAUSE);

 iwl_write_direct32(trans,
      FH_SRVC_CHNL_SRAM_ADDR_REG(FH_SRVC_CHNL),
      dst_addr);

 iwl_write_direct32(trans,
      FH_TFDIB_CTRL0_REG(FH_SRVC_CHNL),
      phy_addr & FH_MEM_TFDIB_DRAM_ADDR_LSB_MSK);

 iwl_write_direct32(trans,
      FH_TFDIB_CTRL1_REG(FH_SRVC_CHNL),
      (iwl_get_dma_hi_addr(phy_addr)
    << FH_MEM_TFDIB_REG1_ADDR_BITSHIFT) | byte_cnt);

 iwl_write_direct32(trans,
      FH_TCSR_CHNL_TX_BUF_STS_REG(FH_SRVC_CHNL),
      1 << FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_NUM |
      1 << FH_TCSR_CHNL_TX_BUF_STS_REG_POS_TB_IDX |
      FH_TCSR_CHNL_TX_BUF_STS_REG_VAL_TFDB_VALID);

 iwl_write_direct32(trans,
      FH_TCSR_CHNL_TX_CONFIG_REG(FH_SRVC_CHNL),
      FH_TCSR_TX_CONFIG_REG_VAL_DMA_CHNL_ENABLE |
      FH_TCSR_TX_CONFIG_REG_VAL_DMA_CREDIT_DISABLE |
      FH_TCSR_TX_CONFIG_REG_VAL_CIRQ_HOST_ENDTFD);

 ret = wait_event_timeout(trans_pcie->ucode_write_waitq,
     trans_pcie->ucode_write_complete, 5 * HZ);
 if (!ret) {
  IWL_ERR(trans, "Failed to load firmware chunk!\n");
  return -ETIMEDOUT;
 }

 return 0;
}
