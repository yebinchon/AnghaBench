
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* q_next; scalar_t__ flags; } ;
typedef TYPE_1__ ips_scb_t ;
struct TYPE_8__ {TYPE_1__* scb_freelist; } ;
typedef TYPE_2__ ips_ha_t ;


 int METHOD_TRACE (char*,int) ;
 int ips_init_scb (TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static ips_scb_t *
ips_getscb(ips_ha_t * ha)
{
 ips_scb_t *scb;

 METHOD_TRACE("ips_getscb", 1);

 if ((scb = ha->scb_freelist) == ((void*)0)) {

  return (((void*)0));
 }

 ha->scb_freelist = scb->q_next;
 scb->flags = 0;
 scb->q_next = ((void*)0);

 ips_init_scb(ha, scb);

 return (scb);
}
