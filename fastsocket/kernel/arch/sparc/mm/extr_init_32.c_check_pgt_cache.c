
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_check_pgt_cache (int ,int ) ;
 int * pgt_cache_water ;

void check_pgt_cache(void)
{
 do_check_pgt_cache(pgt_cache_water[0], pgt_cache_water[1]);
}
