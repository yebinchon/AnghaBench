
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PCI64_ATTR_PREF ;
 int PCI64_ATTR_TARG_SHFT ;
 unsigned long TO_PHYS_MASK ;
 unsigned long virt_to_bus (void*) ;

__attribute__((used)) static inline unsigned long ioc3_map(void *ptr, unsigned long vdev)
{






 return virt_to_bus(ptr);

}
