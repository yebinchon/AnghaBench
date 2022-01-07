
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int sync_bits; int sync_count; int recovering_bits; } ;
struct dm_dirty_log {scalar_t__ context; } ;
typedef int region_t ;


 int log_clear_bit (struct log_c*,int ,int ) ;
 int log_set_bit (struct log_c*,int ,int ) ;
 scalar_t__ log_test_bit (int ,int ) ;

__attribute__((used)) static void core_set_region_sync(struct dm_dirty_log *log, region_t region,
     int in_sync)
{
 struct log_c *lc = (struct log_c *) log->context;

 log_clear_bit(lc, lc->recovering_bits, region);
 if (in_sync) {
  log_set_bit(lc, lc->sync_bits, region);
                lc->sync_count++;
        } else if (log_test_bit(lc->sync_bits, region)) {
  lc->sync_count--;
  log_clear_bit(lc, lc->sync_bits, region);
 }
}
