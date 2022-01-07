
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct idt77252_dev {TYPE_1__* sbpool; } ;
struct TYPE_2__ {int ** skb; } ;


 int FBQ_SIZE ;
 int IDT77252_PRV_POOL (struct sk_buff*) ;
 unsigned int POOL_INDEX (int ) ;
 unsigned int POOL_QUEUE (int ) ;

__attribute__((used)) static void
sb_pool_remove(struct idt77252_dev *card, struct sk_buff *skb)
{
 unsigned int queue, index;
 u32 handle;

 handle = IDT77252_PRV_POOL(skb);

 queue = POOL_QUEUE(handle);
 if (queue > 3)
  return;

 index = POOL_INDEX(handle);
 if (index > FBQ_SIZE - 1)
  return;

 card->sbpool[queue].skb[index] = ((void*)0);
}
