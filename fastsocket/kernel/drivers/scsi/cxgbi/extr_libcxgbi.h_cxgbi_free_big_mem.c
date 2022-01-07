
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_vmalloc_addr (void*) ;
 int kfree (void*) ;
 int vfree (void*) ;

__attribute__((used)) static inline void cxgbi_free_big_mem(void *addr)
{
 if (is_vmalloc_addr(addr))
  vfree(addr);
 else
  kfree(addr);
}
