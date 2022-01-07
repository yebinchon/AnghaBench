
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int HVCALL_SIGNAL_EVENT ;
 int do_hypercall (int ,void*,int *) ;

u16 hv_signal_event(void *con_id)
{
 u16 status;

 status = (do_hypercall(HVCALL_SIGNAL_EVENT, con_id, ((void*)0)) & 0xFFFF);

 return status;
}
