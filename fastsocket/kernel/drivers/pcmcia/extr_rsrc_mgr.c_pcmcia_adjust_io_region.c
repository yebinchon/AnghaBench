
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int dummy; } ;
struct pcmcia_socket {TYPE_1__* resource_ops; } ;
struct TYPE_2__ {int (* adjust_io_region ) (struct resource*,unsigned long,unsigned long,struct pcmcia_socket*) ;} ;


 int ENOMEM ;
 int stub1 (struct resource*,unsigned long,unsigned long,struct pcmcia_socket*) ;

int pcmcia_adjust_io_region(struct resource *res, unsigned long r_start,
       unsigned long r_end, struct pcmcia_socket *s)
{
 if (s->resource_ops->adjust_io_region)
  return s->resource_ops->adjust_io_region(res, r_start, r_end, s);
 return -ENOMEM;
}
