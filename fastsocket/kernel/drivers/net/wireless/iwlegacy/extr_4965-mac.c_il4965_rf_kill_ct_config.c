
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ct_kill_threshold; } ;
struct il_priv {TYPE_1__ hw_params; int lock; } ;
struct il_ct_kill_config {int critical_temperature_R; } ;
typedef int cmd ;


 int CSR_UCODE_DRV_GP1_CLR ;
 int CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT ;
 int C_CT_KILL_CONFIG ;
 int D_INFO (char*,int ) ;
 int IL_ERR (char*) ;
 int _il_wr (struct il_priv*,int ,int ) ;
 int cpu_to_le32 (int ) ;
 int il_send_cmd_pdu (struct il_priv*,int ,int,struct il_ct_kill_config*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
il4965_rf_kill_ct_config(struct il_priv *il)
{
 struct il_ct_kill_config cmd;
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&il->lock, flags);
 _il_wr(il, CSR_UCODE_DRV_GP1_CLR,
        CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
 spin_unlock_irqrestore(&il->lock, flags);

 cmd.critical_temperature_R =
     cpu_to_le32(il->hw_params.ct_kill_threshold);

 ret = il_send_cmd_pdu(il, C_CT_KILL_CONFIG, sizeof(cmd), &cmd);
 if (ret)
  IL_ERR("C_CT_KILL_CONFIG failed\n");
 else
  D_INFO("C_CT_KILL_CONFIG " "succeeded, "
         "critical temperature is %d\n",
         il->hw_params.ct_kill_threshold);
}
