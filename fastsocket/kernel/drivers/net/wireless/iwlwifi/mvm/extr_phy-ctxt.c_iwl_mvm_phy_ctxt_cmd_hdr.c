
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_phy_context_cmd {void* apply_time; void* action; void* id_and_color; } ;
struct iwl_mvm_phy_ctxt {int color; int id; } ;


 int FW_CMD_ID_AND_COLOR (int ,int ) ;
 void* cpu_to_le32 (int ) ;
 int memset (struct iwl_phy_context_cmd*,int ,int) ;

__attribute__((used)) static void iwl_mvm_phy_ctxt_cmd_hdr(struct iwl_mvm_phy_ctxt *ctxt,
         struct iwl_phy_context_cmd *cmd,
         u32 action, u32 apply_time)
{
 memset(cmd, 0, sizeof(struct iwl_phy_context_cmd));

 cmd->id_and_color = cpu_to_le32(FW_CMD_ID_AND_COLOR(ctxt->id,
           ctxt->color));
 cmd->action = cpu_to_le32(action);
 cmd->apply_time = cpu_to_le32(apply_time);
}
