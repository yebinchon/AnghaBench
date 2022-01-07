
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int crw_handler_wait_q ;
 int crw_nr_req ;
 int wake_up (int *) ;

void crw_handle_channel_report(void)
{
 atomic_inc(&crw_nr_req);
 wake_up(&crw_handler_wait_q);
}
