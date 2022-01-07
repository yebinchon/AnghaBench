
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_private {int dev; } ;


 int CMD_BLOCK_COMMAND_OFFSET ;
 int CMD_BLOCK_PARAMETERS_OFFSET ;
 int CMD_BLOCK_STATUS_OFFSET ;
 int atmel_co (struct atmel_private*,int ) ;
 int atmel_copy_to_card (int ,int ,void*,int) ;
 int atmel_wmem8 (struct atmel_private*,int ,int) ;

__attribute__((used)) static void atmel_send_command(struct atmel_private *priv, int command,
          void *cmd, int cmd_size)
{
 if (cmd)
  atmel_copy_to_card(priv->dev, atmel_co(priv, CMD_BLOCK_PARAMETERS_OFFSET),
       cmd, cmd_size);

 atmel_wmem8(priv, atmel_co(priv, CMD_BLOCK_COMMAND_OFFSET), command);
 atmel_wmem8(priv, atmel_co(priv, CMD_BLOCK_STATUS_OFFSET), 0);
}
