
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_os_message_buffer_s ;


 int kfree_skb (int *) ;

void diva_os_free_message_buffer(diva_os_message_buffer_s * dmb)
{
 kfree_skb(dmb);
}
