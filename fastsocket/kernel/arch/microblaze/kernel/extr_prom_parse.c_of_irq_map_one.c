
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct of_irq {int dummy; } ;
struct device_node {int full_name; } ;


 int EINVAL ;
 int* of_get_property (struct device_node*,char*,int*) ;
 struct device_node* of_irq_find_parent (struct device_node*) ;
 int of_irq_map_raw (struct device_node*,int const*,int,int const*,struct of_irq*) ;
 int of_node_put (struct device_node*) ;
 int pr_debug (char*,int const,int) ;

int of_irq_map_one(struct device_node *device,
   int index, struct of_irq *out_irq)
{
 struct device_node *p;
 const u32 *intspec, *tmp, *addr;
 u32 intsize, intlen;
 int res;

 pr_debug("of_irq_map_one: dev=%s, index=%d\n",
   device->full_name, index);


 intspec = of_get_property(device, "interrupts", (int *) &intlen);
 if (intspec == ((void*)0))
  return -EINVAL;
 intlen /= sizeof(u32);

 pr_debug(" intspec=%d intlen=%d\n", *intspec, intlen);


 addr = of_get_property(device, "reg", ((void*)0));


 p = of_irq_find_parent(device);
 if (p == ((void*)0))
  return -EINVAL;


 tmp = of_get_property(p, "#interrupt-cells", ((void*)0));
 if (tmp == ((void*)0)) {
  of_node_put(p);
  return -EINVAL;
 }
 intsize = *tmp;

 pr_debug(" intsize=%d intlen=%d\n", intsize, intlen);


 if ((index + 1) * intsize > intlen)
  return -EINVAL;


 res = of_irq_map_raw(p, intspec + index * intsize, intsize,
    addr, out_irq);
 of_node_put(p);
 return res;
}
