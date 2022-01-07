
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef unsigned long long u32 ;
struct of_device {int dev; struct device_node* node; } ;
struct device_node {int name; } ;
typedef int atomic_t ;


 scalar_t__ OF_BAD_ADDR ;
 int atomic_add_return (int,int *) ;
 int dev_set_name (int *,char*,unsigned long long const,int) ;
 unsigned long long* of_get_property (struct device_node*,char*,int *) ;
 scalar_t__ of_translate_address (struct device_node*,unsigned long long const*) ;
 scalar_t__ of_translate_dcr_address (struct device_node*,unsigned long long const,int *) ;

__attribute__((used)) static void of_device_make_bus_id(struct of_device *dev)
{
 static atomic_t bus_no_reg_magic;
 struct device_node *node = dev->node;
 const u32 *reg;
 u64 addr;
 int magic;
 reg = of_get_property(node, "reg", ((void*)0));
 if (reg) {
  addr = of_translate_address(node, reg);
  if (addr != OF_BAD_ADDR) {
   dev_set_name(&dev->dev, "%llx.%s",
         (unsigned long long)addr, node->name);
   return;
  }
 }





 magic = atomic_add_return(1, &bus_no_reg_magic);
 dev_set_name(&dev->dev, "%s.%d", node->name, magic - 1);
}
