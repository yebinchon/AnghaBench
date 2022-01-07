
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_link {int ap; } ;


 int ata_sff_softreset (struct ata_link*,unsigned int*,unsigned long) ;
 int pdc_reset_port (int ) ;

__attribute__((used)) static int pdc_pata_softreset(struct ata_link *link, unsigned int *class,
         unsigned long deadline)
{
 pdc_reset_port(link->ap);
 return ata_sff_softreset(link, class, deadline);
}
