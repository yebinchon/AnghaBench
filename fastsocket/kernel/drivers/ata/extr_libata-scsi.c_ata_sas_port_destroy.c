
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* port_stop ) (struct ata_port*) ;} ;


 int kfree (struct ata_port*) ;
 int stub1 (struct ata_port*) ;

void ata_sas_port_destroy(struct ata_port *ap)
{
 if (ap->ops->port_stop)
  ap->ops->port_stop(ap);
 kfree(ap);
}
