
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ altstatus_addr; } ;
struct ata_port {TYPE_2__ ioaddr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sff_check_altstatus ) (struct ata_port*) ;} ;


 int ioread8 (scalar_t__) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static void ata_sff_sync(struct ata_port *ap)
{
 if (ap->ops->sff_check_altstatus)
  ap->ops->sff_check_altstatus(ap);
 else if (ap->ioaddr.altstatus_addr)
  ioread8(ap->ioaddr.altstatus_addr);
}
