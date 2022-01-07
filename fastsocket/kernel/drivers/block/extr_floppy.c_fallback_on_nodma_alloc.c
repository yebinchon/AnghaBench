
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int can_use_virtual_dma ;
 scalar_t__ nodma_mem_alloc (size_t) ;
 int printk (char*) ;

__attribute__((used)) static inline void fallback_on_nodma_alloc(char **addr, size_t l)
{
 return;

}
