
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_3__ {struct sk_buff** rx_pool; } ;
typedef TYPE_1__ pegasus_t ;


 int RX_SKBS ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static inline struct sk_buff *pull_skb(pegasus_t * pegasus)
{
 int i;
 struct sk_buff *skb;

 for (i = 0; i < RX_SKBS; i++) {
  if (likely(pegasus->rx_pool[i] != ((void*)0))) {
   skb = pegasus->rx_pool[i];
   pegasus->rx_pool[i] = ((void*)0);
   return skb;
  }
 }
 return ((void*)0);
}
