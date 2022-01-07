
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device {int dummy; } ;


 scalar_t__ ACPI_IRQ_MODEL_IOAPIC ;
 scalar_t__ ACPI_IRQ_MODEL_PIC ;
 int ACPI_LEVEL_SENSITIVE ;
 scalar_t__ acpi_irq_model ;
 int eisa_set_level_irq (unsigned int) ;
 unsigned int mp_register_gsi (struct device*,unsigned int,int,int) ;

int acpi_register_gsi(struct device *dev, u32 gsi, int trigger, int polarity)
{
 unsigned int irq;
 unsigned int plat_gsi = gsi;
 irq = plat_gsi;

 return irq;
}
