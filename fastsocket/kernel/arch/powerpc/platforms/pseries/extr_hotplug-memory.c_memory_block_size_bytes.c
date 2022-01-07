
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct device_node {int dummy; } ;


 struct device_node* of_find_node_by_path (char*) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 int of_node_put (struct device_node*) ;
 int sprintf (char*,char*,unsigned int) ;

u32 memory_block_size_bytes(void)
{
 struct device_node *np;
 unsigned int memblock_size = 0;

 np = of_find_node_by_path("/ibm,dynamic-reconfiguration-memory");
 if (np) {
  const unsigned long *size;

  size = of_get_property(np, "ibm,lmb-size", ((void*)0));
  memblock_size = size ? *size : 0;

  of_node_put(np);
 } else {
  unsigned int memzero_size = 0;
  const unsigned int *regs;

  np = of_find_node_by_path("/memory@0");
  if (np) {
   regs = of_get_property(np, "reg", ((void*)0));
   memzero_size = regs ? regs[3] : 0;
   of_node_put(np);
  }

  if (memzero_size) {



   char buf[64];

   sprintf(buf, "/memory@%x", memzero_size);
   np = of_find_node_by_path(buf);
   if (np) {
    regs = of_get_property(np, "reg", ((void*)0));
    memblock_size = regs ? regs[3] : 0;
    of_node_put(np);
   }
  }
 }

 return memblock_size;
}
