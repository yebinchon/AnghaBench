
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_dmaring {int dummy; } ;
struct b43legacy_dmadesc_meta {int * skb; } ;


 int dev_kfree_skb (int *) ;
 int dev_kfree_skb_irq (int *) ;

__attribute__((used)) static inline
void free_descriptor_buffer(struct b43legacy_dmaring *ring,
       struct b43legacy_dmadesc_meta *meta,
       int irq_context)
{
 if (meta->skb) {
  if (irq_context)
   dev_kfree_skb_irq(meta->skb);
  else
   dev_kfree_skb(meta->skb);
  meta->skb = ((void*)0);
 }
}
