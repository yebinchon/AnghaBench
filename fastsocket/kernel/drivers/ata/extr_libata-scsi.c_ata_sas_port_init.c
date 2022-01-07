
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_port {int print_id; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* port_start ) (struct ata_port*) ;} ;


 int ata_print_id ;
 int atomic_inc_return (int *) ;
 int stub1 (struct ata_port*) ;

int ata_sas_port_init(struct ata_port *ap)
{
 int rc = ap->ops->port_start(ap);

 if (rc)
  return rc;
 ap->print_id = atomic_inc_return(&ata_print_id);
 return 0;
}
