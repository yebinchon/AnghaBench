
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_link {TYPE_1__* ap; } ;
struct TYPE_2__ {int cbl; } ;


 int ATA_CBL_PATA80 ;
 int ata_sff_prereset (struct ata_link*,unsigned long) ;

__attribute__((used)) static int scc_pata_prereset(struct ata_link *link, unsigned long deadline)
{
 link->ap->cbl = ATA_CBL_PATA80;
 return ata_sff_prereset(link, deadline);
}
