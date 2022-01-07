
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_device {int dummy; } ;


 int ata_acpi_clear_gtf (struct ata_device*) ;

void ata_acpi_on_disable(struct ata_device *dev)
{
 ata_acpi_clear_gtf(dev);
}
