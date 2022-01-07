
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_test {TYPE_2__* trans; TYPE_1__* ops; } ;
struct TYPE_4__ {int op_mode; } ;
struct TYPE_3__ {int (* reply ) (int ,struct sk_buff*) ;} ;


 int stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static inline int iwl_test_reply(struct iwl_test *tst, struct sk_buff *skb)
{
 return tst->ops->reply(tst->trans->op_mode, skb);
}
