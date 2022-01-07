
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GRU_GSEG_PAGESIZE ;

__attribute__((used)) static inline void *gru_get_gseg_pointer (void *p)
{
 return (void *)((unsigned long)p & ~(GRU_GSEG_PAGESIZE - 1));
}
