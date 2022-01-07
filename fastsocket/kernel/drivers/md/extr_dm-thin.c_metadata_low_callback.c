
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool {TYPE_1__* ti; int pool_md; } ;
struct TYPE_2__ {int table; } ;


 int DMWARN (char*,int ) ;
 int dm_device_name (int ) ;
 int dm_table_event (int ) ;

__attribute__((used)) static void metadata_low_callback(void *context)
{
 struct pool *pool = context;

 DMWARN("%s: reached low water mark for metadata device: sending event.",
        dm_device_name(pool->pool_md));

 dm_table_event(pool->ti->table);
}
