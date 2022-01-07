
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* sff_check_status ) (struct ata_port*) ;} ;


 int ata_sff_irq_clear (struct ata_port*) ;
 int stub1 (struct ata_port*) ;

__attribute__((used)) static void svia_noop_freeze(struct ata_port *ap)
{



 ap->ops->sff_check_status(ap);
 ata_sff_irq_clear(ap);
}
