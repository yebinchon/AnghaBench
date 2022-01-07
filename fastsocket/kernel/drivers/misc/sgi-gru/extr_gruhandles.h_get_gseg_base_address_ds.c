
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_CACHE_LINE_BYTES ;
 scalar_t__ GRU_DS_BASE ;
 scalar_t__ get_gseg_base_address (void*,int) ;

__attribute__((used)) static inline void *get_gseg_base_address_ds(void *base, int ctxnum, int line)
{
 return (void *)(get_gseg_base_address(base, ctxnum) + GRU_DS_BASE +
   GRU_CACHE_LINE_BYTES * line);
}
