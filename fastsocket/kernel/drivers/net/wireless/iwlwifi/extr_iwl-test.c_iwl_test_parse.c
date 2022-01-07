
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct iwl_test {int trans; } ;


 int ENOMSG ;
 int IWL_ERR (int ,char*,...) ;
 size_t IWL_TM_ATTR_COMMAND ;
 scalar_t__ IWL_TM_ATTR_MAX ;
 int iwl_testmode_gnl_msg_policy ;
 int nla_parse (struct nlattr**,scalar_t__,void*,int,int ) ;

int iwl_test_parse(struct iwl_test *tst, struct nlattr **tb,
     void *data, int len)
{
 int result;

 result = nla_parse(tb, IWL_TM_ATTR_MAX - 1, data, len,
   iwl_testmode_gnl_msg_policy);
 if (result) {
  IWL_ERR(tst->trans, "Fail parse gnl msg: %d\n", result);
  return result;
 }


 if (!tb[IWL_TM_ATTR_COMMAND]) {
  IWL_ERR(tst->trans, "Missing testmode command type\n");
  return -ENOMSG;
 }
 return 0;
}
