
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flow_trigger; int event_trigger; } ;
struct iwl_phy_cfg_cmd {int phy_cfg; TYPE_3__ calib_control; } ;
struct iwl_mvm {int cur_ucode; TYPE_2__* fw; } ;
typedef int phy_cfg_cmd ;
typedef enum iwl_ucode_type { ____Placeholder_iwl_ucode_type } iwl_ucode_type ;
struct TYPE_5__ {TYPE_1__* default_calib; int phy_config; } ;
struct TYPE_4__ {int flow_trigger; int event_trigger; } ;


 int CMD_SYNC ;
 int IWL_DEBUG_INFO (struct iwl_mvm*,char*,int ) ;
 int PHY_CONFIGURATION_CMD ;
 int cpu_to_le32 (int ) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_phy_cfg_cmd*) ;

__attribute__((used)) static int iwl_send_phy_cfg_cmd(struct iwl_mvm *mvm)
{
 struct iwl_phy_cfg_cmd phy_cfg_cmd;
 enum iwl_ucode_type ucode_type = mvm->cur_ucode;


 phy_cfg_cmd.phy_cfg = cpu_to_le32(mvm->fw->phy_config);
 phy_cfg_cmd.calib_control.event_trigger =
  mvm->fw->default_calib[ucode_type].event_trigger;
 phy_cfg_cmd.calib_control.flow_trigger =
  mvm->fw->default_calib[ucode_type].flow_trigger;

 IWL_DEBUG_INFO(mvm, "Sending Phy CFG command: 0x%x\n",
         phy_cfg_cmd.phy_cfg);

 return iwl_mvm_send_cmd_pdu(mvm, PHY_CONFIGURATION_CMD, CMD_SYNC,
        sizeof(phy_cfg_cmd), &phy_cfg_cmd);
}
