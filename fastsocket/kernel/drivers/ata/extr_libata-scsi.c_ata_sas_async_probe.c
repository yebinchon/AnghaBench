
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int __ata_port_probe (struct ata_port*) ;

void ata_sas_async_probe(struct ata_port *ap)
{
 __ata_port_probe(ap);
}
