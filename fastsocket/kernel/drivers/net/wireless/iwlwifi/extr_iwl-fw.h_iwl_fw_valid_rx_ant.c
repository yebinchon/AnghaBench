
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_fw {int phy_config; } ;


 int FW_PHY_CFG_RX_CHAIN ;
 int FW_PHY_CFG_RX_CHAIN_POS ;

__attribute__((used)) static inline u8 iwl_fw_valid_rx_ant(const struct iwl_fw *fw)
{
 return (fw->phy_config & FW_PHY_CFG_RX_CHAIN) >>
  FW_PHY_CFG_RX_CHAIN_POS;
}
