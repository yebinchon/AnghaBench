
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_dev {int dev; } ;


 int ACPI_ACTIVE_HIGH ;
 int ACPI_ACTIVE_LOW ;
 int ACPI_EDGE_SENSITIVE ;
 int ACPI_EXCLUSIVE ;
 int ACPI_LEVEL_SENSITIVE ;
 int ACPI_SHARED ;




 int IORESOURCE_IRQ_SHAREABLE ;
 int dev_err (int *,char*,int) ;

__attribute__((used)) static void decode_irq_flags(struct pnp_dev *dev, int flags, int *triggering,
        int *polarity, int *shareable)
{
 switch (flags & (128 | 130 |
    129 | 131)) {
 case 128:
  *triggering = ACPI_LEVEL_SENSITIVE;
  *polarity = ACPI_ACTIVE_LOW;
  break;
 case 130:
  *triggering = ACPI_LEVEL_SENSITIVE;
  *polarity = ACPI_ACTIVE_HIGH;
  break;
 case 129:
  *triggering = ACPI_EDGE_SENSITIVE;
  *polarity = ACPI_ACTIVE_LOW;
  break;
 case 131:
  *triggering = ACPI_EDGE_SENSITIVE;
  *polarity = ACPI_ACTIVE_HIGH;
  break;
 default:
  dev_err(&dev->dev, "can't encode invalid IRQ mode %#x\n",
   flags);
  *triggering = ACPI_EDGE_SENSITIVE;
  *polarity = ACPI_ACTIVE_HIGH;
  break;
 }

 if (flags & IORESOURCE_IRQ_SHAREABLE)
  *shareable = ACPI_SHARED;
 else
  *shareable = ACPI_EXCLUSIVE;
}
