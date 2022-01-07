
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_host {int n_ports; int * ports; } ;


 int ata_acpi_dissociate (struct ata_host*) ;
 int ata_port_detach (int ) ;

void ata_host_detach(struct ata_host *host)
{
 int i;

 for (i = 0; i < host->n_ports; i++)
  ata_port_detach(host->ports[i]);


 ata_acpi_dissociate(host);
}
