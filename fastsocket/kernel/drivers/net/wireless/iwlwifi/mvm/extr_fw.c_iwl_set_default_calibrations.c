
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct iwl_set_calib_default_cmd {int data; void* length; void* calib_index; } ;
struct iwl_mvm {int dummy; } ;
typedef int cmd_raw ;
typedef int cmd ;
struct TYPE_3__ {int size; int data; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SET_CALIB_DEFAULT_CMD ;
 scalar_t__ WARN_ONCE (int,char*,int) ;
 void* cpu_to_le16 (int) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int ,int,struct iwl_set_calib_default_cmd*) ;
 int memcpy (int ,int ,int) ;
 int memset (int *,int ,int) ;
 TYPE_1__* wkp_calib_default_data ;

__attribute__((used)) static int iwl_set_default_calibrations(struct iwl_mvm *mvm)
{
 u8 cmd_raw[16];
 struct iwl_set_calib_default_cmd *cmd =
  (struct iwl_set_calib_default_cmd *)cmd_raw;
 int ret, i;


 for (i = 0; i < ARRAY_SIZE(wkp_calib_default_data); i++) {
  u16 cmd_len;

  if (wkp_calib_default_data[i].size == 0)
   continue;

  memset(cmd_raw, 0, sizeof(cmd_raw));
  cmd_len = wkp_calib_default_data[i].size + sizeof(cmd);
  cmd->calib_index = cpu_to_le16(i);
  cmd->length = cpu_to_le16(wkp_calib_default_data[i].size);
  if (WARN_ONCE(cmd_len > sizeof(cmd_raw),
         "Need to enlarge cmd_raw to %d\n", cmd_len))
   break;
  memcpy(cmd->data, wkp_calib_default_data[i].data,
         wkp_calib_default_data[i].size);
  ret = iwl_mvm_send_cmd_pdu(mvm, SET_CALIB_DEFAULT_CMD, 0,
        sizeof(*cmd) +
        wkp_calib_default_data[i].size,
        cmd);
  if (ret)
   return ret;
 }

 return 0;
}
