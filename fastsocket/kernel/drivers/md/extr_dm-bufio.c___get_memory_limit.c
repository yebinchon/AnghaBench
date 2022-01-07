
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_bufio_client {unsigned long sectors_per_block_bits; } ;


 scalar_t__ ACCESS_ONCE (int ) ;
 unsigned long DM_BUFIO_MIN_BUFFERS ;
 unsigned long DM_BUFIO_WRITEBACK_PERCENT ;
 unsigned long SECTOR_SHIFT ;
 int __cache_size_refresh () ;
 int dm_bufio_cache_size ;
 scalar_t__ dm_bufio_cache_size_latch ;
 unsigned long dm_bufio_cache_size_per_client ;
 int dm_bufio_clients_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __get_memory_limit(struct dm_bufio_client *c,
          unsigned long *threshold_buffers,
          unsigned long *limit_buffers)
{
 unsigned long buffers;

 if (ACCESS_ONCE(dm_bufio_cache_size) != dm_bufio_cache_size_latch) {
  mutex_lock(&dm_bufio_clients_lock);
  __cache_size_refresh();
  mutex_unlock(&dm_bufio_clients_lock);
 }

 buffers = dm_bufio_cache_size_per_client >>
    (c->sectors_per_block_bits + SECTOR_SHIFT);

 if (buffers < DM_BUFIO_MIN_BUFFERS)
  buffers = DM_BUFIO_MIN_BUFFERS;

 *limit_buffers = buffers;
 *threshold_buffers = buffers * DM_BUFIO_WRITEBACK_PERCENT / 100;
}
