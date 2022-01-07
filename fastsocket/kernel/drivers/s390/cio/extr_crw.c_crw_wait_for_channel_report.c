
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int crw_handle_channel_report () ;
 int crw_handler_wait_q ;
 int crw_nr_req ;
 int wait_event (int ,int) ;

void crw_wait_for_channel_report(void)
{
 crw_handle_channel_report();
 wait_event(crw_handler_wait_q, atomic_read(&crw_nr_req) == 0);
}
