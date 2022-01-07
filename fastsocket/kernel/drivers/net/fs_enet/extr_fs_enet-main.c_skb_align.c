
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;


 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static void skb_align(struct sk_buff *skb, int align)
{
 int off = ((unsigned long)skb->data) & (align - 1);

 if (off)
  skb_reserve(skb, align - off);
}
