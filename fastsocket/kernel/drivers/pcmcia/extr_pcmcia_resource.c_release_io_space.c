
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pcmcia_socket {TYPE_1__* io; } ;
struct TYPE_5__ {unsigned int start; unsigned int end; } ;
struct TYPE_4__ {scalar_t__ InUse; TYPE_2__* res; } ;


 int MAX_IO_WIN ;
 int kfree (TYPE_2__*) ;
 int release_resource (TYPE_2__*) ;

__attribute__((used)) static void release_io_space(struct pcmcia_socket *s, unsigned int base,
        unsigned int num)
{
 int i;

 for (i = 0; i < MAX_IO_WIN; i++) {
  if (!s->io[i].res)
   continue;
  if ((s->io[i].res->start <= base) &&
      (s->io[i].res->end >= base+num-1)) {
   s->io[i].InUse -= num;

   if (s->io[i].InUse == 0) {
    release_resource(s->io[i].res);
    kfree(s->io[i].res);
    s->io[i].res = ((void*)0);
   }
  }
 }
}
