
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_GSEG0_BASE ;
 int GRU_GSEG_STRIDE ;

__attribute__((used)) static inline void *get_gseg_base_address(void *base, int ctxnum)
{
 return (void *)(base + GRU_GSEG0_BASE + GRU_GSEG_STRIDE * ctxnum);
}
