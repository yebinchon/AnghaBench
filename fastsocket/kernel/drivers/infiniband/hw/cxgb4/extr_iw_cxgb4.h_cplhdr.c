
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {void* data; } ;



__attribute__((used)) static inline void *cplhdr(struct sk_buff *skb)
{
 return skb->data;
}
