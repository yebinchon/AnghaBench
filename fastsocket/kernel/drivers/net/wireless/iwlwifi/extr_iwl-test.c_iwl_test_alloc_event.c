
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_test {TYPE_2__* trans; TYPE_1__* ops; } ;
struct TYPE_4__ {int op_mode; } ;
struct TYPE_3__ {struct sk_buff* (* alloc_event ) (int ,int) ;} ;


 struct sk_buff* stub1 (int ,int) ;

__attribute__((used)) static inline struct sk_buff*
iwl_test_alloc_event(struct iwl_test *tst, int len)
{
 return tst->ops->alloc_event(tst->trans->op_mode, len);
}
