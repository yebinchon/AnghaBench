
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {scalar_t__ sync_search; } ;
struct dm_dirty_log {scalar_t__ context; } ;



__attribute__((used)) static int core_resume(struct dm_dirty_log *log)
{
 struct log_c *lc = (struct log_c *) log->context;
 lc->sync_search = 0;
 return 0;
}
