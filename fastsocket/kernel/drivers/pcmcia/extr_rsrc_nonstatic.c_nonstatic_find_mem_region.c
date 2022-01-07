
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u_long ;
struct socket_data {int mem_db; } ;
struct resource {int dummy; } ;
struct pcmcia_socket {int features; TYPE_1__* cb_dev; struct socket_data* resource_data; int dev; } ;
struct pcmcia_align_data {unsigned long mask; unsigned long offset; int * map; } ;
struct TYPE_2__ {int bus; } ;


 int IORESOURCE_MEM ;
 int SS_CAP_PAGE_REGS ;
 int allocate_resource (int *,struct resource*,unsigned long,unsigned long,unsigned long,int,int ,struct pcmcia_align_data*) ;
 int dev_name (int *) ;
 int iomem_resource ;
 int kfree (struct resource*) ;
 struct resource* make_resource (int ,unsigned long,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_alloc_resource (int ,struct resource*,unsigned long,int,unsigned long,int ,int ,struct pcmcia_align_data*) ;
 int pcmcia_align ;
 int rsrc_mutex ;

__attribute__((used)) static struct resource * nonstatic_find_mem_region(u_long base, u_long num,
  u_long align, int low, struct pcmcia_socket *s)
{
 struct resource *res = make_resource(0, num, IORESOURCE_MEM, dev_name(&s->dev));
 struct socket_data *s_data = s->resource_data;
 struct pcmcia_align_data data;
 unsigned long min, max;
 int ret, i;

 low = low || !(s->features & SS_CAP_PAGE_REGS);

 data.mask = align - 1;
 data.offset = base & data.mask;
 data.map = &s_data->mem_db;

 for (i = 0; i < 2; i++) {
  if (low) {
   max = 0x100000UL;
   min = base < max ? base : 0;
  } else {
   max = ~0UL;
   min = 0x100000UL + base;
  }

  mutex_lock(&rsrc_mutex);







   ret = allocate_resource(&iomem_resource, res, num, min,
      max, 1, pcmcia_align, &data);
  mutex_unlock(&rsrc_mutex);
  if (ret == 0 || low)
   break;
  low = 1;
 }

 if (ret != 0) {
  kfree(res);
  res = ((void*)0);
 }
 return res;
}
