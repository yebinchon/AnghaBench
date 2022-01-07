
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct resource {int dummy; } ;
struct pcmcia_socket {TYPE_1__* resource_ops; } ;
struct TYPE_2__ {struct resource* (* find_mem ) (int ,int ,int ,int,struct pcmcia_socket*) ;} ;


 struct resource* stub1 (int ,int ,int ,int,struct pcmcia_socket*) ;

struct resource *pcmcia_find_mem_region(u_long base, u_long num, u_long align,
     int low, struct pcmcia_socket *s)
{
 if (s->resource_ops->find_mem)
  return s->resource_ops->find_mem(base, num, align, low, s);
 return ((void*)0);
}
