
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
typedef int __u8 ;


 int async_wrap_skb (struct sk_buff*,int*,int) ;

__attribute__((used)) static inline int mcs_wrap_sir_skb(struct sk_buff *skb, __u8 * buf)
{
 int wraplen;


 wraplen = async_wrap_skb(skb, buf + 2, 4094);

 wraplen += 2;
 buf[0] = wraplen & 0xff;
 buf[1] = (wraplen >> 8) & 0xff;

 return wraplen;
}
