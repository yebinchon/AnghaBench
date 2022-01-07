
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct iwl_op_mode {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* free_skb ) (struct iwl_op_mode*,struct sk_buff*) ;} ;


 int stub1 (struct iwl_op_mode*,struct sk_buff*) ;

__attribute__((used)) static inline void iwl_op_mode_free_skb(struct iwl_op_mode *op_mode,
     struct sk_buff *skb)
{
 op_mode->ops->free_skb(op_mode, skb);
}
