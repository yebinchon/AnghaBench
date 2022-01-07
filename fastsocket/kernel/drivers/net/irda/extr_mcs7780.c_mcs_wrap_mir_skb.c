
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
typedef int __u8 ;
typedef int __u16 ;


 int irda_calc_crc16 (int,int ,int) ;
 int skb_copy_from_linear_data (struct sk_buff const*,int*,int) ;

__attribute__((used)) static unsigned mcs_wrap_mir_skb(const struct sk_buff *skb, __u8 *buf)
{
 __u16 fcs = 0;
 int len = skb->len + 4;

 fcs = ~(irda_calc_crc16(~fcs, skb->data, skb->len));




 buf[0] = len & 0xff;
 buf[1] = (len >> 8) & 0xff;

 skb_copy_from_linear_data(skb, buf + 2, skb->len);

 buf[len - 2] = fcs & 0xff;
 buf[len - 1] = (fcs >> 8) & 0xff;

 return len;
}
