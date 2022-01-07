
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct iwl_test {int trans; } ;


 int IWL_DEBUG_INFO (int ,char*) ;
 size_t IWL_TM_ATTR_COMMAND ;
 int iwl_test_fw_cmd (struct iwl_test*,struct nlattr**) ;
 int iwl_test_get_dev_id (struct iwl_test*,struct nlattr**) ;
 int iwl_test_get_fw_ver (struct iwl_test*,struct nlattr**) ;
 int iwl_test_indirect_mem (struct iwl_test*,struct nlattr**) ;
 int iwl_test_notifications (struct iwl_test*,struct nlattr**) ;
 int iwl_test_reg (struct iwl_test*,struct nlattr**) ;
 int iwl_test_trace_begin (struct iwl_test*,struct nlattr**) ;
 int iwl_test_trace_stop (struct iwl_test*) ;
 int nla_get_u32 (struct nlattr*) ;

int iwl_test_handle_cmd(struct iwl_test *tst, struct nlattr **tb)
{
 int result;

 switch (nla_get_u32(tb[IWL_TM_ATTR_COMMAND])) {
 case 128:
  IWL_DEBUG_INFO(tst->trans, "test cmd to uCode\n");
  result = iwl_test_fw_cmd(tst, tb);
  break;

 case 137:
 case 136:
 case 135:
  IWL_DEBUG_INFO(tst->trans, "test cmd to register\n");
  result = iwl_test_reg(tst, tb);
  break;

 case 138:
  IWL_DEBUG_INFO(tst->trans, "test uCode trace cmd to driver\n");
  result = iwl_test_trace_begin(tst, tb);
  break;

 case 134:
  iwl_test_trace_stop(tst);
  result = 0;
  break;

 case 131:
 case 130:
  IWL_DEBUG_INFO(tst->trans, "test indirect memory cmd\n");
  result = iwl_test_indirect_mem(tst, tb);
  break;

 case 129:
  IWL_DEBUG_INFO(tst->trans, "test notifications cmd\n");
  result = iwl_test_notifications(tst, tb);
  break;

 case 132:
  IWL_DEBUG_INFO(tst->trans, "test get FW ver cmd\n");
  result = iwl_test_get_fw_ver(tst, tb);
  break;

 case 133:
  IWL_DEBUG_INFO(tst->trans, "test Get device ID cmd\n");
  result = iwl_test_get_dev_id(tst, tb);
  break;

 default:
  IWL_DEBUG_INFO(tst->trans, "Unknown test command\n");
  result = 1;
  break;
 }
 return result;
}
