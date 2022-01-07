
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct iwl_trans_pcie {int status; } ;
struct iwl_trans {TYPE_2__* cfg; } ;
struct TYPE_4__ {TYPE_1__* base_params; } ;
struct TYPE_3__ {scalar_t__ pll_cfg_val; } ;


 int APMG_CLK_EN_REG ;
 int APMG_CLK_VAL_DMA_CLK_RQT ;
 int APMG_PCIDEV_STT_REG ;
 int APMG_PCIDEV_STT_VAL_L1_ACT_DIS ;
 int CSR_ANA_PLL_CFG ;
 int CSR_DBG_HPET_MEM_REG ;
 scalar_t__ CSR_DBG_HPET_MEM_REG_VAL ;
 int CSR_GIO_CHICKEN_BITS ;
 scalar_t__ CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER ;
 scalar_t__ CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX ;
 int CSR_GP_CNTRL ;
 scalar_t__ CSR_GP_CNTRL_REG_FLAG_INIT_DONE ;
 int CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY ;
 int CSR_HW_IF_CONFIG_REG ;
 scalar_t__ CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A ;
 int IWL_DEBUG_INFO (struct iwl_trans*,char*) ;
 struct iwl_trans_pcie* IWL_TRANS_GET_PCIE_TRANS (struct iwl_trans*) ;
 int STATUS_DEVICE_ENABLED ;
 int iwl_pcie_apm_config (struct iwl_trans*) ;
 int iwl_poll_bit (struct iwl_trans*,int ,int ,int ,int) ;
 int iwl_set_bit (struct iwl_trans*,int ,scalar_t__) ;
 int iwl_set_bits_prph (struct iwl_trans*,int ,int ) ;
 int iwl_write_prph (struct iwl_trans*,int ,int ) ;
 int set_bit (int ,int *) ;
 int udelay (int) ;

__attribute__((used)) static int iwl_pcie_apm_init(struct iwl_trans *trans)
{
 struct iwl_trans_pcie *trans_pcie = IWL_TRANS_GET_PCIE_TRANS(trans);
 int ret = 0;
 IWL_DEBUG_INFO(trans, "Init card's basic functions\n");







 iwl_set_bit(trans, CSR_GIO_CHICKEN_BITS,
      CSR_GIO_CHICKEN_BITS_REG_BIT_DIS_L0S_EXIT_TIMER);





 iwl_set_bit(trans, CSR_GIO_CHICKEN_BITS,
      CSR_GIO_CHICKEN_BITS_REG_BIT_L1A_NO_L0S_RX);


 iwl_set_bit(trans, CSR_DBG_HPET_MEM_REG, CSR_DBG_HPET_MEM_REG_VAL);





 iwl_set_bit(trans, CSR_HW_IF_CONFIG_REG,
      CSR_HW_IF_CONFIG_REG_BIT_HAP_WAKE_L1A);

 iwl_pcie_apm_config(trans);


 if (trans->cfg->base_params->pll_cfg_val)
  iwl_set_bit(trans, CSR_ANA_PLL_CFG,
       trans->cfg->base_params->pll_cfg_val);





 iwl_set_bit(trans, CSR_GP_CNTRL, CSR_GP_CNTRL_REG_FLAG_INIT_DONE);






 ret = iwl_poll_bit(trans, CSR_GP_CNTRL,
      CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY,
      CSR_GP_CNTRL_REG_FLAG_MAC_CLOCK_READY, 25000);
 if (ret < 0) {
  IWL_DEBUG_INFO(trans, "Failed to init the card\n");
  goto out;
 }
 iwl_write_prph(trans, APMG_CLK_EN_REG, APMG_CLK_VAL_DMA_CLK_RQT);
 udelay(20);


 iwl_set_bits_prph(trans, APMG_PCIDEV_STT_REG,
     APMG_PCIDEV_STT_VAL_L1_ACT_DIS);

 set_bit(STATUS_DEVICE_ENABLED, &trans_pcie->status);

out:
 return ret;
}
