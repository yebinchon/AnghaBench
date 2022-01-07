
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_priv {int wait_command_queue; int status; } ;
struct ipw2100_cmd_header {size_t host_command_reg; } ;


 size_t ARRAY_SIZE (int *) ;
 size_t CARD_DISABLE ;
 size_t HOST_COMPLETE ;
 int IPW_DEBUG_HC (char*,int ,size_t) ;
 int STATUS_CMD_ACTIVE ;
 int STATUS_ENABLED ;
 int * command_types ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void isr_rx_complete_command(struct ipw2100_priv *priv,
        struct ipw2100_cmd_header *cmd)
{







 if (cmd->host_command_reg == HOST_COMPLETE)
  priv->status |= STATUS_ENABLED;

 if (cmd->host_command_reg == CARD_DISABLE)
  priv->status &= ~STATUS_ENABLED;

 priv->status &= ~STATUS_CMD_ACTIVE;

 wake_up_interruptible(&priv->wait_command_queue);
}
