
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ATA_MAX_QUEUE ;
 scalar_t__ ata_qc_from_tag (struct ata_port*,unsigned int) ;

__attribute__((used)) static int ata_eh_nr_in_flight(struct ata_port *ap)
{
 unsigned int tag;
 int nr = 0;


 for (tag = 0; tag < ATA_MAX_QUEUE - 1; tag++)
  if (ata_qc_from_tag(ap, tag))
   nr++;

 return nr;
}
