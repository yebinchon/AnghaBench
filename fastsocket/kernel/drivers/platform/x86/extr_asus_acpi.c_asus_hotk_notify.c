
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_device {int dummy; } ;
struct TYPE_2__ {int brightness; int * event_count; int device; } ;


 int ACPI_MAX_SYS_NOTIFY ;
 scalar_t__ BR_DOWN ;
 scalar_t__ BR_UP ;
 int acpi_bus_generate_proc_event (int ,int,int ) ;
 TYPE_1__* hotk ;

__attribute__((used)) static void asus_hotk_notify(struct acpi_device *device, u32 event)
{

 if (!hotk)
  return;






 if (event > ACPI_MAX_SYS_NOTIFY)
  return;

 if ((event & ~((u32) BR_UP)) < 16)
  hotk->brightness = (event & ~((u32) BR_UP));
 else if ((event & ~((u32) BR_DOWN)) < 16)
  hotk->brightness = (event & ~((u32) BR_DOWN));

 acpi_bus_generate_proc_event(hotk->device, event,
    hotk->event_count[event % 128]++);

 return;
}
