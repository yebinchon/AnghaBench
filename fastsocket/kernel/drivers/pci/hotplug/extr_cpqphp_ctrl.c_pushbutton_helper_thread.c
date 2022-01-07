
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpqhp_event_thread ;
 unsigned long pushbutton_pending ;
 int wake_up_process (int ) ;

__attribute__((used)) static void pushbutton_helper_thread(unsigned long data)
{
 pushbutton_pending = data;
 wake_up_process(cpqhp_event_thread);
}
