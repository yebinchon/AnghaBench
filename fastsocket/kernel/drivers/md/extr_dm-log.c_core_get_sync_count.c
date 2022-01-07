
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int sync_count; } ;
struct dm_dirty_log {scalar_t__ context; } ;
typedef int region_t ;



__attribute__((used)) static region_t core_get_sync_count(struct dm_dirty_log *log)
{
        struct log_c *lc = (struct log_c *) log->context;

        return lc->sync_count;
}
