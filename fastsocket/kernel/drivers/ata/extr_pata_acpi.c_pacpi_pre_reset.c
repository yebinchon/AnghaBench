
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pata_acpi {int gtm; } ;
struct ata_port {int * acpi_handle; struct pata_acpi* private_data; } ;
struct ata_link {struct ata_port* ap; } ;


 int ENODEV ;
 scalar_t__ ata_acpi_gtm (struct ata_port*,int *) ;
 int ata_sff_prereset (struct ata_link*,unsigned long) ;

__attribute__((used)) static int pacpi_pre_reset(struct ata_link *link, unsigned long deadline)
{
 struct ata_port *ap = link->ap;
 struct pata_acpi *acpi = ap->private_data;
 if (ap->acpi_handle == ((void*)0) || ata_acpi_gtm(ap, &acpi->gtm) < 0)
  return -ENODEV;

 return ata_sff_prereset(link, deadline);
}
