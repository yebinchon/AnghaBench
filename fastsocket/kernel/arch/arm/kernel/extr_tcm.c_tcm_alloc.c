
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gen_pool_alloc (int ,size_t) ;
 int tcm_pool ;

void *tcm_alloc(size_t len)
{
 unsigned long vaddr;

 if (!tcm_pool)
  return ((void*)0);

 vaddr = gen_pool_alloc(tcm_pool, len);
 if (!vaddr)
  return ((void*)0);

 return (void *) vaddr;
}
