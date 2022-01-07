
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint ;


 scalar_t__ CPM_DP_NOSPACE ;
 scalar_t__ dp_alloc_base ;
 scalar_t__ dp_alloc_top ;

uint
m360_cpm_dpalloc(uint size)
{
        uint retloc;

        if ((dp_alloc_base + size) >= dp_alloc_top)
                return(CPM_DP_NOSPACE);

        retloc = dp_alloc_base;
        dp_alloc_base += size;

        return(retloc);
}
