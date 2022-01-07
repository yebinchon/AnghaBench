
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_workqueue (int ) ;
 int kacpi_notify_wq ;
 int kacpid_wq ;

void acpi_os_wait_events_complete(void *context)
{
 flush_workqueue(kacpid_wq);
 flush_workqueue(kacpi_notify_wq);
}
