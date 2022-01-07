
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
typedef int __u8 ;
typedef int __u32 ;


 int crc32_le (int ,int ,int) ;
 int skb_copy_from_linear_data (struct sk_buff const*,int*,int) ;

__attribute__((used)) static unsigned mcs_wrap_fir_skb(const struct sk_buff *skb, __u8 *buf)
{
 unsigned int len = 0;
 __u32 fcs = ~(crc32_le(~0, skb->data, skb->len));


 len = skb->len + 6;





 buf[0] = len & 0xff;
 buf[1] = (len >> 8) & 0xff;

 skb_copy_from_linear_data(skb, buf + 2, skb->len);

 buf[len - 4] = fcs & 0xff;
 buf[len - 3] = (fcs >> 8) & 0xff;
 buf[len - 2] = (fcs >> 16) & 0xff;
 buf[len - 1] = (fcs >> 24) & 0xff;

 return len;
}
