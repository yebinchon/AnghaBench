
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; int * res; } ;
struct pcmcia_socket {int * cis_virt; TYPE_2__ cis_mem; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mem_map ) (struct pcmcia_socket*,TYPE_2__*) ;} ;


 int MAP_ACTIVE ;
 int iounmap (int *) ;
 int kfree (int *) ;
 int release_resource (int *) ;
 int stub1 (struct pcmcia_socket*,TYPE_2__*) ;

void release_cis_mem(struct pcmcia_socket *s)
{
    if (s->cis_mem.flags & MAP_ACTIVE) {
 s->cis_mem.flags &= ~MAP_ACTIVE;
 s->ops->set_mem_map(s, &s->cis_mem);
 if (s->cis_mem.res) {
     release_resource(s->cis_mem.res);
     kfree(s->cis_mem.res);
     s->cis_mem.res = ((void*)0);
 }
 iounmap(s->cis_virt);
 s->cis_virt = ((void*)0);
    }
}
