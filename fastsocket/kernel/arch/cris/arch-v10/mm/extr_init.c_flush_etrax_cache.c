
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int flush_etrax_cacherange (int ,int) ;

void
flush_etrax_cache(void)
{
 flush_etrax_cacherange(0, 8192);
}
