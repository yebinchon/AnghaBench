
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_ACTIVE_LOW ;
 int ACPI_LEVEL_SENSITIVE ;
 int ACPI_SHARED ;
 int IORESOURCE_IRQ_HIGHEDGE ;
 int IORESOURCE_IRQ_HIGHLEVEL ;
 int IORESOURCE_IRQ_LOWEDGE ;
 int IORESOURCE_IRQ_LOWLEVEL ;
 int IORESOURCE_IRQ_SHAREABLE ;

__attribute__((used)) static int irq_flags(int triggering, int polarity, int shareable)
{
 int flags;

 if (triggering == ACPI_LEVEL_SENSITIVE) {
  if (polarity == ACPI_ACTIVE_LOW)
   flags = IORESOURCE_IRQ_LOWLEVEL;
  else
   flags = IORESOURCE_IRQ_HIGHLEVEL;
 } else {
  if (polarity == ACPI_ACTIVE_LOW)
   flags = IORESOURCE_IRQ_LOWEDGE;
  else
   flags = IORESOURCE_IRQ_HIGHEDGE;
 }

 if (shareable == ACPI_SHARED)
  flags |= IORESOURCE_IRQ_SHAREABLE;

 return flags;
}
