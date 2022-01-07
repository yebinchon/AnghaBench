
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_link {TYPE_1__* ap; } ;
struct TYPE_2__ {struct ata_link* slave_link; } ;


 int WARN_ON (int) ;
 scalar_t__ ata_phys_link_offline (struct ata_link*) ;

bool ata_link_offline(struct ata_link *link)
{
 struct ata_link *slave = link->ap->slave_link;

 WARN_ON(link == slave);

 return ata_phys_link_offline(link) &&
  (!slave || ata_phys_link_offline(slave));
}
