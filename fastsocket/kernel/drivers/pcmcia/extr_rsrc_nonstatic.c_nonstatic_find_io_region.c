
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket_data {int io_db; } ;
struct resource {int dummy; } ;
struct pcmcia_socket {TYPE_1__* cb_dev; struct socket_data* resource_data; int dev; } ;
struct pcmcia_align_data {unsigned long mask; unsigned long offset; int * map; } ;
struct TYPE_2__ {int bus; } ;


 int IORESOURCE_IO ;
 int allocate_resource (int *,struct resource*,int,unsigned long,unsigned long,int,int ,struct pcmcia_align_data*) ;
 int dev_name (int *) ;
 int ioport_resource ;
 int kfree (struct resource*) ;
 struct resource* make_resource (int ,int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_alloc_resource (int ,struct resource*,int,int,unsigned long,int ,int ,struct pcmcia_align_data*) ;
 int pcmcia_align ;
 int rsrc_mutex ;

__attribute__((used)) static struct resource *nonstatic_find_io_region(unsigned long base, int num,
     unsigned long align, struct pcmcia_socket *s)
{
 struct resource *res = make_resource(0, num, IORESOURCE_IO, dev_name(&s->dev));
 struct socket_data *s_data = s->resource_data;
 struct pcmcia_align_data data;
 unsigned long min = base;
 int ret;

 if (align == 0)
  align = 0x10000;

 data.mask = align - 1;
 data.offset = base & data.mask;
 data.map = &s_data->io_db;

 mutex_lock(&rsrc_mutex);






  ret = allocate_resource(&ioport_resource, res, num, min, ~0UL,
     1, pcmcia_align, &data);
 mutex_unlock(&rsrc_mutex);

 if (ret != 0) {
  kfree(res);
  res = ((void*)0);
 }
 return res;
}
