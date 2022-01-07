
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _dm_event_cache ;
 int kmem_cache_destroy (int ) ;

void dm_uevent_exit(void)
{
 kmem_cache_destroy(_dm_event_cache);
}
