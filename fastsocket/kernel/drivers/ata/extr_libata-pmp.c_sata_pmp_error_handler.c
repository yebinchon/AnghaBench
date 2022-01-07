
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ata_eh_autopsy (struct ata_port*) ;
 int ata_eh_finish (struct ata_port*) ;
 int ata_eh_report (struct ata_port*) ;
 int sata_pmp_eh_recover (struct ata_port*) ;

void sata_pmp_error_handler(struct ata_port *ap)
{
 ata_eh_autopsy(ap);
 ata_eh_report(ap);
 sata_pmp_eh_recover(ap);
 ata_eh_finish(ap);
}
