
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long MAX_PHYSMEM_BITS ;
 int ehca_create_busmap_callback ;
 scalar_t__ ehca_mr_len ;
 int walk_system_ram_range (int ,unsigned long long,int *,int ) ;

int ehca_create_busmap(void)
{
 int ret;

 ehca_mr_len = 0;
 ret = walk_system_ram_range(0, 1ULL << MAX_PHYSMEM_BITS, ((void*)0),
       ehca_create_busmap_callback);
 return ret;
}
