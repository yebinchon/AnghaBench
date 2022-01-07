
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_workqueue (int ) ;
 int rport_event_queue ;

__attribute__((used)) static void fc_rport_flush_queue(void)
{
 flush_workqueue(rport_event_queue);
}
