
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct sk_buff {int truesize; int data_len; int len; } ;
struct e1000_buffer {int * page; } ;


 scalar_t__ PAGE_SIZE ;

__attribute__((used)) static void e1000_consume_page(struct e1000_buffer *bi, struct sk_buff *skb,
                               u16 length)
{
 bi->page = ((void*)0);
 skb->len += length;
 skb->data_len += length;
 skb->truesize += PAGE_SIZE;
}
