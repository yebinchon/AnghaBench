
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sk_buff {int data; int head; scalar_t__ csum_start; scalar_t__ csum_offset; } ;



__attribute__((used)) static u32 smsc95xx_calc_csum_preamble(struct sk_buff *skb)
{
 int len = skb->data - skb->head;
 u16 high_16 = (u16)(skb->csum_offset + skb->csum_start - len);
 u16 low_16 = (u16)(skb->csum_start - len);
 return (high_16 << 16) | low_16;
}
