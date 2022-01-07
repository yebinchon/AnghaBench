
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int diva_os_message_buffer_s ;


 int GFP_ATOMIC ;
 int * alloc_skb (unsigned long,int ) ;
 void* skb_put (int *,unsigned long) ;

diva_os_message_buffer_s *diva_os_alloc_message_buffer(unsigned long size,
             void **data_buf)
{
 diva_os_message_buffer_s *dmb = alloc_skb(size, GFP_ATOMIC);
 if (dmb) {
  *data_buf = skb_put(dmb, size);
 }
 return (dmb);
}
