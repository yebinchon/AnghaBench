
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; scalar_t__ data; } ;
struct eth1394hdr {scalar_t__ h_proto; int h_dest; } ;
struct TYPE_2__ {int name; } ;


 int ETH1394_PRINT (int ,int ,char*,int ) ;
 int ETH_P_IP ;
 int KERN_DEBUG ;
 int arp_find (unsigned char*,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int ntohs (scalar_t__) ;

__attribute__((used)) static int ether1394_rebuild_header(struct sk_buff *skb)
{
 struct eth1394hdr *eth = (struct eth1394hdr *)skb->data;

 if (eth->h_proto == htons(ETH_P_IP))
  return arp_find((unsigned char *)&eth->h_dest, skb);

 ETH1394_PRINT(KERN_DEBUG, skb->dev->name,
        "unable to resolve type %04x addresses\n",
        ntohs(eth->h_proto));
 return 0;
}
