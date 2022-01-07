
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_proto; } ;





__attribute__((used)) static inline int qeth_get_ip_version(struct sk_buff *skb)
{
 struct ethhdr *ehdr = (struct ethhdr *)skb->data;
 switch (ehdr->h_proto) {
 case 128:
  return 6;
 case 129:
  return 4;
 default:
  return 0;
 }
}
