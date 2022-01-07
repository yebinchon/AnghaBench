
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_2__ {int bus_id; int device_class; } ;
struct acpi_device {TYPE_1__ pnp; } ;
struct acpi_bus_event {void* data; void* type; int bus_id; int device_class; } ;


 int EINVAL ;
 scalar_t__ NOTIFY_BAD ;
 int acpi_chain_head ;
 scalar_t__ blocking_notifier_call_chain (int *,int ,void*) ;
 int strcpy (int ,int ) ;

int acpi_notifier_call_chain(struct acpi_device *dev, u32 type, u32 data)
{
 struct acpi_bus_event event;

 strcpy(event.device_class, dev->pnp.device_class);
 strcpy(event.bus_id, dev->pnp.bus_id);
 event.type = type;
 event.data = data;
 return (blocking_notifier_call_chain(&acpi_chain_head, 0, (void *)&event)
                        == NOTIFY_BAD) ? -EINVAL : 0;
}
