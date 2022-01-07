
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kimage {int nr_segments; TYPE_1__* segment; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int hpte_clear_all; } ;
struct TYPE_3__ {unsigned long mem; unsigned long memsz; } ;


 int ENOENT ;
 int ETXTBSY ;
 unsigned long __pa (scalar_t__) ;
 scalar_t__ _end ;
 scalar_t__ htab_address ;
 unsigned long htab_size_bytes ;
 struct device_node* of_find_node_by_type (struct device_node*,char*) ;
 void* of_get_property (struct device_node*,char*,int *) ;
 TYPE_2__ ppc_md ;

int default_machine_kexec_prepare(struct kimage *image)
{
 int i;
 unsigned long begin, end;
 unsigned long low, high;
 struct device_node *node;
 const unsigned long *basep;
 const unsigned int *sizep;

 if (!ppc_md.hpte_clear_all)
  return -ENOENT;






 for (i = 0; i < image->nr_segments; i++)
  if (image->segment[i].mem < __pa(_end))
   return -ETXTBSY;
 if (htab_address) {
  low = __pa(htab_address);
  high = low + htab_size_bytes;

  for (i = 0; i < image->nr_segments; i++) {
   begin = image->segment[i].mem;
   end = begin + image->segment[i].memsz;

   if ((begin < high) && (end > low))
    return -ETXTBSY;
  }
 }


 for (node = of_find_node_by_type(((void*)0), "pci"); node != ((void*)0);
   node = of_find_node_by_type(node, "pci")) {
  basep = of_get_property(node, "linux,tce-base", ((void*)0));
  sizep = of_get_property(node, "linux,tce-size", ((void*)0));
  if (basep == ((void*)0) || sizep == ((void*)0))
   continue;

  low = *basep;
  high = low + (*sizep);

  for (i = 0; i < image->nr_segments; i++) {
   begin = image->segment[i].mem;
   end = begin + image->segment[i].memsz;

   if ((begin < high) && (end > low))
    return -ETXTBSY;
  }
 }

 return 0;
}
