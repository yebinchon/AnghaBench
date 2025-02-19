
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_host {int dummy; } ;
struct device_node {int dummy; } ;
typedef unsigned int irq_hw_number_t ;


 int EINVAL ;
 int ENODEV ;
 unsigned int IIC_IRQ_CLASS_SHIFT ;
 unsigned int IIC_IRQ_NODE_SHIFT ;
 unsigned int IIC_IRQ_TYPE_IOEXC ;
 unsigned int IIC_IRQ_TYPE_NORMAL ;
 unsigned int IIC_UNIT_IIC ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 int of_device_is_compatible (struct device_node*,char*) ;
 int* of_get_property (struct device_node*,char*,int *) ;

__attribute__((used)) static int iic_host_xlate(struct irq_host *h, struct device_node *ct,
      u32 *intspec, unsigned int intsize,
      irq_hw_number_t *out_hwirq, unsigned int *out_flags)

{
 unsigned int node, ext, unit, class;
 const u32 *val;

 if (!of_device_is_compatible(ct,
         "IBM,CBEA-Internal-Interrupt-Controller"))
  return -ENODEV;
 if (intsize != 1)
  return -ENODEV;
 val = of_get_property(ct, "#interrupt-cells", ((void*)0));
 if (val == ((void*)0) || *val != 1)
  return -ENODEV;

 node = intspec[0] >> 24;
 ext = (intspec[0] >> 16) & 0xff;
 class = (intspec[0] >> 8) & 0xff;
 unit = intspec[0] & 0xff;


 if (node > 1)
  return -EINVAL;


 *out_hwirq = (node << IIC_IRQ_NODE_SHIFT);
 if (unit == IIC_UNIT_IIC && class == 1)
  *out_hwirq |= IIC_IRQ_TYPE_IOEXC | ext;
 else
  *out_hwirq |= IIC_IRQ_TYPE_NORMAL |
   (class << IIC_IRQ_CLASS_SHIFT) | unit;


 *out_flags = IRQ_TYPE_EDGE_RISING;

 return 0;
}
