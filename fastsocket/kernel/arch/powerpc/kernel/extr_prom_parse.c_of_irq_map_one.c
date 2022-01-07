
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_irq {int dummy; } ;
struct device_node {int full_name; } ;


 int DBG (char*,int,int) ;
 int EINVAL ;
 int OF_IMAP_OLDWORLD_MAC ;
 int* of_get_property (struct device_node*,char*,int*) ;
 struct device_node* of_irq_find_parent (struct device_node*) ;
 int of_irq_map_oldworld (struct device_node*,int,struct of_irq*) ;
 int of_irq_map_raw (struct device_node*,int const*,int,int const*,struct of_irq*) ;
 int of_irq_workarounds ;
 int of_node_put (struct device_node*) ;

int of_irq_map_one(struct device_node *device, int index, struct of_irq *out_irq)
{
 struct device_node *p;
 const u32 *intspec, *tmp, *addr;
 u32 intsize, intlen;
 int res = -EINVAL;

 DBG("of_irq_map_one: dev=%s, index=%d\n", device->full_name, index);


 if (of_irq_workarounds & OF_IMAP_OLDWORLD_MAC)
  return of_irq_map_oldworld(device, index, out_irq);


 intspec = of_get_property(device, "interrupts", &intlen);
 if (intspec == ((void*)0))
  return -EINVAL;
 intlen /= sizeof(u32);


 addr = of_get_property(device, "reg", ((void*)0));


 p = of_irq_find_parent(device);
 if (p == ((void*)0))
  return -EINVAL;


 tmp = of_get_property(p, "#interrupt-cells", ((void*)0));
 if (tmp == ((void*)0))
  goto out;
 intsize = *tmp;

 DBG(" intsize=%d intlen=%d\n", intsize, intlen);


 if ((index + 1) * intsize > intlen)
  goto out;


 res = of_irq_map_raw(p, intspec + index * intsize, intsize,
        addr, out_irq);
out:
 of_node_put(p);
 return res;
}
