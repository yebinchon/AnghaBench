
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int* data; } ;
struct TYPE_5__ {TYPE_1__* fax; } ;
typedef TYPE_2__ modem_info ;
typedef int __u8 ;
struct TYPE_4__ {int bor; } ;



void
isdn_tty_fax_bitorder(modem_info * info, struct sk_buff *skb)
{
 __u8 LeftMask;
 __u8 RightMask;
 __u8 fBit;
 __u8 Data;
 int i;

 if (!info->fax->bor) {
  for (i = 0; i < skb->len; i++) {
   Data = skb->data[i];
   for (
        LeftMask = 0x80, RightMask = 0x01;
        LeftMask > RightMask;
        LeftMask >>= 1, RightMask <<= 1
       ) {
    fBit = (Data & LeftMask);
    if (Data & RightMask)
     Data |= LeftMask;
    else
     Data &= ~LeftMask;
    if (fBit)
     Data |= RightMask;
    else
     Data &= ~RightMask;

   }
   skb->data[i] = Data;
  }
 }
}
