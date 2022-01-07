
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_test {TYPE_2__* trans; TYPE_1__* ops; } ;
struct TYPE_4__ {int op_mode; } ;
struct TYPE_3__ {void (* event ) (int ,struct sk_buff*) ;} ;


 void stub1 (int ,struct sk_buff*) ;

__attribute__((used)) static inline void
iwl_test_event(struct iwl_test *tst, struct sk_buff *skb)
{
 return tst->ops->event(tst->trans->op_mode, skb);
}
