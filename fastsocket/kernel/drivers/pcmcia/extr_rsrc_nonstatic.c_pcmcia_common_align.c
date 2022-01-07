
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct pcmcia_align_data {int mask; int offset; } ;
typedef int resource_size_t ;



__attribute__((used)) static void
pcmcia_common_align(void *align_data, struct resource *res,
   resource_size_t size, resource_size_t align)
{
 struct pcmcia_align_data *data = align_data;
 resource_size_t start;



 start = (res->start & ~data->mask) + data->offset;
 if (start < res->start)
  start += data->mask + 1;
 res->start = start;
}
