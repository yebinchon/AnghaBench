
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;


 int memcpy (int ,char const*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void bcsp_slip_msgdelim(struct sk_buff *skb)
{
 const char pkt_delim = 0xc0;

 memcpy(skb_put(skb, 1), &pkt_delim, 1);
}
