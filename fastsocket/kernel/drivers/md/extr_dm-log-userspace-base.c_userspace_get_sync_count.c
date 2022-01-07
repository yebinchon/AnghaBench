
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int sync_count ;
struct log_c {scalar_t__ region_count; scalar_t__ in_sync_hint; int uuid; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef int region_t ;


 int DM_ULOG_GET_SYNC_COUNT ;
 int userspace_do_request (struct log_c*,int ,int ,int *,int ,char*,size_t*) ;

__attribute__((used)) static region_t userspace_get_sync_count(struct dm_dirty_log *log)
{
 int r;
 size_t rdata_size;
 uint64_t sync_count;
 struct log_c *lc = log->context;

 rdata_size = sizeof(sync_count);
 r = userspace_do_request(lc, lc->uuid, DM_ULOG_GET_SYNC_COUNT,
     ((void*)0), 0,
     (char *)&sync_count, &rdata_size);

 if (r)
  return 0;

 if (sync_count >= lc->region_count)
  lc->in_sync_hint = lc->region_count;

 return (region_t)sync_count;
}
