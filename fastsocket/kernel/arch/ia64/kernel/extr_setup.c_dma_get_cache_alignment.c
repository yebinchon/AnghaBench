
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ia64_max_cacheline_size ;

int dma_get_cache_alignment(void)
{
        return ia64_max_cacheline_size;
}
