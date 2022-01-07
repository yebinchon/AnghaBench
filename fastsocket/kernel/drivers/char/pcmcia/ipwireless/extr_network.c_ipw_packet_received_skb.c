
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 unsigned char PPP_ALLSTATIONS ;
 unsigned char PPP_UI ;
 struct sk_buff* dev_alloc_skb (unsigned int) ;
 int memcpy (int ,unsigned char*,unsigned int) ;
 int skb_put (struct sk_buff*,unsigned int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *ipw_packet_received_skb(unsigned char *data,
            unsigned int length)
{
 struct sk_buff *skb;

 if (length > 2 && data[0] == PPP_ALLSTATIONS && data[1] == PPP_UI) {
  length -= 2;
  data += 2;
 }

 skb = dev_alloc_skb(length + 4);
 skb_reserve(skb, 2);
 memcpy(skb_put(skb, length), data, length);

 return skb;
}
