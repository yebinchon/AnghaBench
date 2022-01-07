
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int skb_set_queue_mapping (struct sk_buff*,int) ;

__attribute__((used)) static inline void set_wr_txq(struct sk_buff *skb, int prio, int queue)
{
 skb_set_queue_mapping(skb, (queue << 1) | prio);
}
