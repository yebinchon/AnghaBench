
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {scalar_t__ acpi_handle; } ;
struct ata_host {int n_ports; struct ata_port** ports; } ;
struct ata_acpi_gtm {int dummy; } ;


 struct ata_acpi_gtm* ata_acpi_init_gtm (struct ata_port*) ;
 int ata_acpi_stm (struct ata_port*,struct ata_acpi_gtm const*) ;

void ata_acpi_dissociate(struct ata_host *host)
{
 int i;




 for (i = 0; i < host->n_ports; i++) {
  struct ata_port *ap = host->ports[i];
  const struct ata_acpi_gtm *gtm = ata_acpi_init_gtm(ap);

  if (ap->acpi_handle && gtm)
   ata_acpi_stm(ap, gtm);
 }
}
