
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_trans {int dummy; } ;


 int FH_MEM_RCSR_CHNL0_CONFIG_REG ;
 int FH_MEM_RSSR_RX_STATUS_REG ;
 int FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE ;
 int iwl_poll_direct_bit (struct iwl_trans*,int ,int ,int) ;
 int iwl_write_direct32 (struct iwl_trans*,int ,int ) ;

int iwl_pcie_rx_stop(struct iwl_trans *trans)
{
 iwl_write_direct32(trans, FH_MEM_RCSR_CHNL0_CONFIG_REG, 0);
 return iwl_poll_direct_bit(trans, FH_MEM_RSSR_RX_STATUS_REG,
       FH_RSSR_CHNL0_RX_STATUS_CHNL_IDLE, 1000);
}
