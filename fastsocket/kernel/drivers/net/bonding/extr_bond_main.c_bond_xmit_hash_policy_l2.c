
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct ethhdr {int* h_dest; int* h_source; } ;



__attribute__((used)) static int bond_xmit_hash_policy_l2(struct sk_buff *skb,
       struct net_device *bond_dev, int count)
{
 struct ethhdr *data = (struct ethhdr *)skb->data;

 return (data->h_dest[5] ^ data->h_source[5]) % count;
}
