
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {unsigned int len; int* data; } ;
struct ql_adapter {int lb_count; } ;


 int atomic_dec (int *) ;

void ql_check_lb_frame(struct ql_adapter *qdev,
     struct sk_buff *skb)
{
 unsigned int frame_size = skb->len;

 if ((*(skb->data + 3) == 0xFF) &&
  (*(skb->data + frame_size / 2 + 10) == 0xBE) &&
  (*(skb->data + frame_size / 2 + 12) == 0xAF)) {
   atomic_dec(&qdev->lb_count);
   return;
 }
}
