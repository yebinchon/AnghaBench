
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int acpi_status ;
typedef int acpi_osd_handler ;


 int AE_OK ;
 int acpi_irq ;
 int * acpi_irq_handler ;
 scalar_t__ acpi_irq_irq ;
 int free_irq (scalar_t__,int ) ;

acpi_status acpi_os_remove_interrupt_handler(u32 irq, acpi_osd_handler handler)
{
 if (irq) {
  free_irq(irq, acpi_irq);
  acpi_irq_handler = ((void*)0);
  acpi_irq_irq = 0;
 }

 return AE_OK;
}
