
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct pcmcia_socket {TYPE_1__* resource_ops; } ;
struct TYPE_2__ {struct resource* (* find_io ) (unsigned long,int,unsigned long,struct pcmcia_socket*) ;} ;


 struct resource* stub1 (unsigned long,int,unsigned long,struct pcmcia_socket*) ;

struct resource *pcmcia_find_io_region(unsigned long base, int num,
     unsigned long align, struct pcmcia_socket *s)
{
 if (s->resource_ops->find_io)
  return s->resource_ops->find_io(base, num, align, s);
 return ((void*)0);
}
