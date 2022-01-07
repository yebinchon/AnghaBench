
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwl_powertable_cmd {int flags; int lprx_rssi_threshold; int tx_data_timeout; int rx_data_timeout; int keep_alive_seconds; } ;
struct iwl_mvm {int dummy; } ;
struct TYPE_2__ {int power_scheme; } ;


 int IWL_DEBUG_POWER (struct iwl_mvm*,char*,int ,...) ;
 int POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK ;
 int cpu_to_le16 (int ) ;
 TYPE_1__ iwlmvm_mod_params ;
 int le16_to_cpu (int) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void iwl_mvm_power_log(struct iwl_mvm *mvm,
         struct iwl_powertable_cmd *cmd)
{
 IWL_DEBUG_POWER(mvm,
   "Sending power table command for power level %d, flags = 0x%X\n",
   iwlmvm_mod_params.power_scheme,
   le16_to_cpu(cmd->flags));
 IWL_DEBUG_POWER(mvm, "Keep alive = %u sec\n", cmd->keep_alive_seconds);

 if (cmd->flags & cpu_to_le16(POWER_FLAGS_POWER_MANAGEMENT_ENA_MSK)) {
  IWL_DEBUG_POWER(mvm, "Rx timeout = %u usec\n",
    le32_to_cpu(cmd->rx_data_timeout));
  IWL_DEBUG_POWER(mvm, "Tx timeout = %u usec\n",
    le32_to_cpu(cmd->tx_data_timeout));
  IWL_DEBUG_POWER(mvm, "LP RX RSSI threshold = %u\n",
    cmd->lprx_rssi_threshold);
 }
}
