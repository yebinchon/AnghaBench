
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct netlink_callback {int dummy; } ;
struct iwl_test {int trans; } ;


 int IWL_DEBUG_INFO (int ,char*) ;


 int iwl_test_buffer_dump (struct iwl_test*,struct sk_buff*,struct netlink_callback*) ;
 int iwl_test_trace_dump (struct iwl_test*,struct sk_buff*,struct netlink_callback*) ;

int iwl_test_dump(struct iwl_test *tst, u32 cmd, struct sk_buff *skb,
    struct netlink_callback *cb)
{
 int result;

 switch (cmd) {
 case 128:
  IWL_DEBUG_INFO(tst->trans, "uCode trace cmd\n");
  result = iwl_test_trace_dump(tst, skb, cb);
  break;

 case 129:
  IWL_DEBUG_INFO(tst->trans, "testmode sram dump cmd\n");
  result = iwl_test_buffer_dump(tst, skb, cb);
  break;

 default:
  result = 1;
  break;
 }
 return result;
}
