
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; scalar_t__ data; } ;
struct fwnet_header {int h_proto; int h_dest; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ ETH_P_IP ;
 int arp_find (unsigned char*,struct sk_buff*) ;
 int be16_to_cpu (int ) ;
 int fw_notify (char*,int ,int ) ;
 scalar_t__ get_unaligned_be16 (int *) ;

__attribute__((used)) static int fwnet_header_rebuild(struct sk_buff *skb)
{
 struct fwnet_header *h = (struct fwnet_header *)skb->data;

 if (get_unaligned_be16(&h->h_proto) == ETH_P_IP)
  return arp_find((unsigned char *)&h->h_dest, skb);

 fw_notify("%s: unable to resolve type %04x addresses\n",
    skb->dev->name, be16_to_cpu(h->h_proto));
 return 0;
}
