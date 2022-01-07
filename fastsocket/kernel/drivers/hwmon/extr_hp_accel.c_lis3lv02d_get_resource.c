
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct acpi_resource_extended_irq {int * interrupts; } ;
struct TYPE_2__ {struct acpi_resource_extended_irq extended_irq; } ;
struct acpi_resource {scalar_t__ type; TYPE_1__ data; } ;
typedef int acpi_status ;


 scalar_t__ ACPI_RESOURCE_TYPE_EXTENDED_IRQ ;
 int AE_OK ;

__attribute__((used)) static acpi_status
lis3lv02d_get_resource(struct acpi_resource *resource, void *context)
{
 if (resource->type == ACPI_RESOURCE_TYPE_EXTENDED_IRQ) {
  struct acpi_resource_extended_irq *irq;
  u32 *device_irq = context;

  irq = &resource->data.extended_irq;
  *device_irq = irq->interrupts[0];
 }

 return AE_OK;
}
