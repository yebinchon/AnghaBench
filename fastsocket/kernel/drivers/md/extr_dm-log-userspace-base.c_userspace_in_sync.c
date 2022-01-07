
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct log_c {int uuid; } ;
struct dm_dirty_log {struct log_c* context; } ;
typedef int region_t ;
typedef int region64 ;
typedef scalar_t__ int64_t ;
typedef int in_sync ;


 int DM_ULOG_IN_SYNC ;
 int EWOULDBLOCK ;
 int userspace_do_request (struct log_c*,int ,int ,char*,int,char*,size_t*) ;

__attribute__((used)) static int userspace_in_sync(struct dm_dirty_log *log, region_t region,
        int can_block)
{
 int r;
 uint64_t region64 = region;
 int64_t in_sync;
 size_t rdata_size;
 struct log_c *lc = log->context;
 if (!can_block)
  return -EWOULDBLOCK;

 rdata_size = sizeof(in_sync);
 r = userspace_do_request(lc, lc->uuid, DM_ULOG_IN_SYNC,
     (char *)&region64, sizeof(region64),
     (char *)&in_sync, &rdata_size);
 return (r) ? 0 : (int)in_sync;
}
