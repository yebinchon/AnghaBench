
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct iwl_priv {int dummy; } ;
struct iwl_host_cmd {int flags; int data; int len; int id; } ;


 int iwl_dvm_send_cmd (struct iwl_priv*,struct iwl_host_cmd*) ;

int iwl_dvm_send_cmd_pdu(struct iwl_priv *priv, u8 id,
    u32 flags, u16 len, const void *data)
{
 struct iwl_host_cmd cmd = {
  .id = id,
  .len = { len, },
  .data = { data, },
  .flags = flags,
 };

 return iwl_dvm_send_cmd(priv, &cmd);
}
