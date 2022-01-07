
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {TYPE_1__* dev; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH1394_ALEN ;
 int memcpy (unsigned char*,int ,int) ;

__attribute__((used)) static int ether1394_header_parse(const struct sk_buff *skb,
      unsigned char *haddr)
{
 memcpy(haddr, skb->dev->dev_addr, ETH1394_ALEN);
 return ETH1394_ALEN;
}
