
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct iwl_test {TYPE_1__* trans; } ;
struct TYPE_3__ {int hw_id; } ;


 int EMSGSIZE ;
 int ENOMEM ;
 int IWL_DEBUG_INFO (TYPE_1__*,char*,int ) ;
 int IWL_ERR (TYPE_1__*,char*,...) ;
 int IWL_TM_ATTR_DEVICE_ID ;
 struct sk_buff* iwl_test_alloc_reply (struct iwl_test*,int) ;
 int iwl_test_reply (struct iwl_test*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int iwl_test_get_dev_id(struct iwl_test *tst, struct nlattr **tb)
{
 u32 devid = tst->trans->hw_id;
 struct sk_buff *skb;
 int status;

 IWL_DEBUG_INFO(tst->trans, "hw version: 0x%x\n", devid);

 skb = iwl_test_alloc_reply(tst, 20);
 if (!skb) {
  IWL_ERR(tst->trans, "Memory allocation fail\n");
  return -ENOMEM;
 }

 if (nla_put_u32(skb, IWL_TM_ATTR_DEVICE_ID, devid))
  goto nla_put_failure;
 status = iwl_test_reply(tst, skb);
 if (status < 0)
  IWL_ERR(tst->trans, "Error sending msg : %d\n", status);

 return 0;

nla_put_failure:
 kfree_skb(skb);
 return -EMSGSIZE;
}
