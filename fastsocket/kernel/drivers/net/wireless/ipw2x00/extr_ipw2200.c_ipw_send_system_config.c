
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw_priv {int sys_config; } ;


 int IPW_CMD_SYSTEM_CONFIG ;
 int ipw_send_cmd_pdu (struct ipw_priv*,int ,int,int *) ;

__attribute__((used)) static int ipw_send_system_config(struct ipw_priv *priv)
{
 return ipw_send_cmd_pdu(priv, IPW_CMD_SYSTEM_CONFIG,
    sizeof(priv->sys_config),
    &priv->sys_config);
}
