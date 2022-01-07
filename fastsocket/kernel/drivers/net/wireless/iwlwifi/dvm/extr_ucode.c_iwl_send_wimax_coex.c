
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_wimax_coex_cmd {int dummy; } ;
struct iwl_priv {int dummy; } ;
typedef int coex_cmd ;


 int CMD_SYNC ;
 int COEX_PRIORITY_TABLE_CMD ;
 int iwl_dvm_send_cmd_pdu (struct iwl_priv*,int ,int ,int,struct iwl_wimax_coex_cmd*) ;
 int memset (struct iwl_wimax_coex_cmd*,int ,int) ;

__attribute__((used)) static int iwl_send_wimax_coex(struct iwl_priv *priv)
{
 struct iwl_wimax_coex_cmd coex_cmd;


 memset(&coex_cmd, 0, sizeof(coex_cmd));

 return iwl_dvm_send_cmd_pdu(priv,
    COEX_PRIORITY_TABLE_CMD, CMD_SYNC,
    sizeof(coex_cmd), &coex_cmd);
}
