
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int flags; TYPE_1__* drive; } ;
struct pata_acpi {TYPE_2__ gtm; } ;
struct ata_timing {int cycle; } ;
struct ata_port {struct pata_acpi* private_data; } ;
struct ata_device {int devno; int pio_mode; } ;
struct TYPE_4__ {int pio; } ;


 int ata_acpi_gtm (struct ata_port*,TYPE_2__*) ;
 int ata_acpi_stm (struct ata_port*,TYPE_2__*) ;
 struct ata_timing* ata_timing_find_mode (int ) ;

__attribute__((used)) static void pacpi_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 int unit = adev->devno;
 struct pata_acpi *acpi = ap->private_data;
 const struct ata_timing *t;

 if (!(acpi->gtm.flags & 0x10))
  unit = 0;


 t = ata_timing_find_mode(adev->pio_mode);
 acpi->gtm.drive[unit].pio = t->cycle;
 ata_acpi_stm(ap, &acpi->gtm);

 ata_acpi_gtm(ap, &acpi->gtm);
}
