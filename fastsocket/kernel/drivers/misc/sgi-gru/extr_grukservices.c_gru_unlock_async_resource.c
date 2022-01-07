
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC_HAN_TO_BID (unsigned long) ;
 int gru_unlock_kernel_context (int) ;

void gru_unlock_async_resource(unsigned long han)
{
 int blade_id = ASYNC_HAN_TO_BID(han);

 gru_unlock_kernel_context(blade_id);
}
