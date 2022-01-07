
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {scalar_t__ sync_search; scalar_t__ region_count; int recovering_bits; scalar_t__ sync_bits; } ;
struct dm_dirty_log {scalar_t__ context; } ;
typedef scalar_t__ region_t ;


 scalar_t__ ext2_find_next_zero_bit (unsigned long*,scalar_t__,scalar_t__) ;
 int log_set_bit (struct log_c*,int ,scalar_t__) ;
 scalar_t__ log_test_bit (int ,scalar_t__) ;

__attribute__((used)) static int core_get_resync_work(struct dm_dirty_log *log, region_t *region)
{
 struct log_c *lc = (struct log_c *) log->context;

 if (lc->sync_search >= lc->region_count)
  return 0;

 do {
  *region = ext2_find_next_zero_bit(
          (unsigned long *) lc->sync_bits,
          lc->region_count,
          lc->sync_search);
  lc->sync_search = *region + 1;

  if (*region >= lc->region_count)
   return 0;

 } while (log_test_bit(lc->recovering_bits, *region));

 log_set_bit(lc, lc->recovering_bits, *region);
 return 1;
}
