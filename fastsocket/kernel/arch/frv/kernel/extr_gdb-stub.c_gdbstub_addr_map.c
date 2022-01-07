
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PAGE_MASK ;
 int __get_DAMLR (int) ;
 int __get_DAMPR (int) ;
 int __saved_damlr ;
 int __saved_dampr ;
 int __set_DAMLR (int,unsigned long) ;
 int __set_DAMPR (int,unsigned long) ;
 scalar_t__ gdbstub_addr_probe (void const*) ;
 unsigned long gdbstub_virt_to_pte (unsigned long) ;

__attribute__((used)) static inline int gdbstub_addr_map(const void *vaddr)
{






 if (gdbstub_addr_probe(vaddr))
  return 1;
 return 0;
}
