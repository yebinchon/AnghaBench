
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ar9170 {int dummy; } ;


 unsigned int __carl9170_get_queue (struct ar9170*,int ) ;
 int skb_get_queue_mapping (struct sk_buff*) ;

__attribute__((used)) static inline unsigned int carl9170_get_queue(struct ar9170 *ar,
           struct sk_buff *skb)
{
 return __carl9170_get_queue(ar, skb_get_queue_mapping(skb));
}
