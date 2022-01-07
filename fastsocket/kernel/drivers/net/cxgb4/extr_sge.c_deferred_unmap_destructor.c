
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ head; TYPE_2__* dev; } ;
typedef int dma_addr_t ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int unmap_skb (int ,struct sk_buff*,int *) ;

__attribute__((used)) static void deferred_unmap_destructor(struct sk_buff *skb)
{
 unmap_skb(skb->dev->dev.parent, skb, (dma_addr_t *)skb->head);
}
