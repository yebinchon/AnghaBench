
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_map {unsigned long base; int num; struct resource_map* next; } ;
struct resource {unsigned long start; unsigned long end; } ;
struct pcmcia_align_data {struct resource_map* map; } ;
typedef int resource_size_t ;


 int pcmcia_common_align (struct pcmcia_align_data*,struct resource*,int,int) ;

__attribute__((used)) static void
pcmcia_align(void *align_data, struct resource *res, resource_size_t size,
  resource_size_t align)
{
 struct pcmcia_align_data *data = align_data;
 struct resource_map *m;

 pcmcia_common_align(data, res, size, align);

 for (m = data->map->next; m != data->map; m = m->next) {
  unsigned long start = m->base;
  unsigned long end = m->base + m->num - 1;






  if (res->start < start) {
   res->start = start;
   pcmcia_common_align(data, res, size, align);
  }





  if (res->start >= res->end)
   break;

  if ((res->start + size - 1) <= end)
   break;
 }




 if (m == data->map)
  res->start = res->end;
}
