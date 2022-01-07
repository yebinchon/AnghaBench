
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_trans {int dummy; } ;


 int iwl_pcie_reset_ict (struct iwl_trans*) ;
 int iwl_pcie_tx_start (struct iwl_trans*,int ) ;

__attribute__((used)) static void iwl_trans_pcie_fw_alive(struct iwl_trans *trans, u32 scd_addr)
{
 iwl_pcie_reset_ict(trans);
 iwl_pcie_tx_start(trans, scd_addr);
}
