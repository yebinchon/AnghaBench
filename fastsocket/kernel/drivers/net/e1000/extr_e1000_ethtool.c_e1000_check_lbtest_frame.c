
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; } ;



__attribute__((used)) static int e1000_check_lbtest_frame(struct sk_buff *skb,
        unsigned int frame_size)
{
 frame_size &= ~1;
 if (*(skb->data + 3) == 0xFF) {
  if ((*(skb->data + frame_size / 2 + 10) == 0xBE) &&
     (*(skb->data + frame_size / 2 + 12) == 0xAF)) {
   return 0;
  }
 }
 return 13;
}
