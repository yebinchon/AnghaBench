
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct il_priv {int restart; int workqueue; TYPE_5__* cfg; int status; int wait_command_queue; TYPE_3__* ops; TYPE_2__* hw; } ;
struct TYPE_10__ {TYPE_4__* mod_params; } ;
struct TYPE_9__ {scalar_t__ restart_fw; } ;
struct TYPE_8__ {int (* dump_fh ) (struct il_priv*,int *,int) ;int (* dump_nic_error_log ) (struct il_priv*) ;} ;
struct TYPE_7__ {TYPE_1__* wiphy; } ;
struct TYPE_6__ {int fw_version; } ;


 int IL_DBG (int,char*) ;
 int IL_DL_FW_ERRORS ;
 int IL_ERR (char*,int ) ;
 int S_EXIT_PENDING ;
 int S_FW_ERROR ;
 int S_HCMD_ACTIVE ;
 int S_READY ;
 int clear_bit (int ,int *) ;
 int il_get_debug_level (struct il_priv*) ;
 int il_print_rx_config_cmd (struct il_priv*) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 int stub1 (struct il_priv*) ;
 int stub2 (struct il_priv*,int *,int) ;
 int test_bit (int ,int *) ;
 int wake_up (int *) ;

void
il_irq_handle_error(struct il_priv *il)
{

 set_bit(S_FW_ERROR, &il->status);


 clear_bit(S_HCMD_ACTIVE, &il->status);

 IL_ERR("Loaded firmware version: %s\n", il->hw->wiphy->fw_version);

 il->ops->dump_nic_error_log(il);
 if (il->ops->dump_fh)
  il->ops->dump_fh(il, ((void*)0), 0);





 wake_up(&il->wait_command_queue);



 clear_bit(S_READY, &il->status);

 if (!test_bit(S_EXIT_PENDING, &il->status)) {
  IL_DBG(IL_DL_FW_ERRORS,
         "Restarting adapter due to uCode error.\n");

  if (il->cfg->mod_params->restart_fw)
   queue_work(il->workqueue, &il->restart);
 }
}
