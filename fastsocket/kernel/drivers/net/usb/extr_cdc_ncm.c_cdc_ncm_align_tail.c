
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t len; } ;


 size_t ALIGN (size_t,size_t) ;
 int memset (int ,int ,size_t) ;
 int skb_put (struct sk_buff*,size_t) ;
 size_t skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static void cdc_ncm_align_tail(struct sk_buff *skb, size_t modulus, size_t remainder, size_t max)
{
 size_t align = ALIGN(skb->len, modulus) - skb->len + remainder;

 if (skb->len + align > max)
  align = max - skb->len;
 if (align && skb_tailroom(skb) >= align)
  memset(skb_put(skb, align), 0, align);
}
