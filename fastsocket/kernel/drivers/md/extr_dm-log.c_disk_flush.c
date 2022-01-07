
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_c {int flush_failed; int region_count; int log_dev_flush_failed; scalar_t__ touched_cleaned; scalar_t__ touched_dirtied; int clean_bits; int ti; } ;
struct dm_dirty_log {scalar_t__ (* flush_callback_fn ) (int ) ;struct log_c* context; } ;


 int WRITE ;
 int fail_log_device (struct log_c*) ;
 int flush_header (struct log_c*) ;
 int log_clear_bit (struct log_c*,int ,int) ;
 int rw_header (struct log_c*,int ) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int disk_flush(struct dm_dirty_log *log)
{
 int r, i;
 struct log_c *lc = log->context;


 if (!lc->touched_cleaned && !lc->touched_dirtied)
  return 0;

 if (lc->touched_cleaned && log->flush_callback_fn &&
     log->flush_callback_fn(lc->ti)) {






  lc->flush_failed = 1;
  for (i = 0; i < lc->region_count; i++)
   log_clear_bit(lc, lc->clean_bits, i);
 }

 r = rw_header(lc, WRITE);
 if (r)
  fail_log_device(lc);
 else {
  if (lc->touched_dirtied) {
   r = flush_header(lc);
   if (r) {
    lc->log_dev_flush_failed = 1;
    fail_log_device(lc);
   } else
    lc->touched_dirtied = 0;
  }
  lc->touched_cleaned = 0;
 }

 return r;
}
