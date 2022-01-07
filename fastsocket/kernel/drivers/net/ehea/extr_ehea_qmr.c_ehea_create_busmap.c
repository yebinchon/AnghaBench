
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long MAX_PHYSMEM_BITS ;
 int ehea_busmap_mutex ;
 int ehea_create_busmap_callback ;
 scalar_t__ ehea_mr_len ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int walk_system_ram_range (int ,unsigned long long,int *,int ) ;

int ehea_create_busmap(void)
{
 int ret;

 mutex_lock(&ehea_busmap_mutex);
 ehea_mr_len = 0;
 ret = walk_system_ram_range(0, 1ULL << MAX_PHYSMEM_BITS, ((void*)0),
       ehea_create_busmap_callback);
 mutex_unlock(&ehea_busmap_mutex);
 return ret;
}
