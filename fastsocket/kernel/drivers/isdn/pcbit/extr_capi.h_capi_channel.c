
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ushort ;
struct sk_buff {scalar_t__ data; } ;
struct pcbit_dev {struct pcbit_chan* b2; struct pcbit_chan* b1; } ;
struct pcbit_chan {scalar_t__ callref; } ;


 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static inline struct pcbit_chan *
capi_channel(struct pcbit_dev *dev, struct sk_buff *skb)
{
 ushort callref;

 callref = *((ushort*) skb->data);
 skb_pull(skb, 2);

 if (dev->b1->callref == callref)
  return dev->b1;
 else if (dev->b2->callref == callref)
  return dev->b2;

 return ((void*)0);
}
