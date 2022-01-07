
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {int pool_md; TYPE_1__* ti; } ;
struct TYPE_2__ {int table; } ;


 int DMINFO (char*,int ,char const*) ;
 int dm_device_name (int ) ;
 int dm_table_event (int ) ;

__attribute__((used)) static void notify_of_pool_mode_change(struct pool *pool, const char *new_mode)
{
 dm_table_event(pool->ti->table);
 DMINFO("%s: switching pool to %s mode",
        dm_device_name(pool->pool_md), new_mode);
}
