
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dummy; } ;


 int ata_do_link_abort (struct ata_port*,int *) ;

int ata_port_abort(struct ata_port *ap)
{
 return ata_do_link_abort(ap, ((void*)0));
}
