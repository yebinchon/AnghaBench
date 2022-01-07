
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACCESS_ONCE (int ) ;
 int BUG_ON (int) ;
 int cmpxchg (int *,int ,int) ;
 int dm_bufio_cache_size ;
 int dm_bufio_cache_size_latch ;
 int dm_bufio_cache_size_per_client ;
 scalar_t__ dm_bufio_client_count ;
 int dm_bufio_clients_lock ;
 int dm_bufio_default_cache_size ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static void __cache_size_refresh(void)
{
 BUG_ON(!mutex_is_locked(&dm_bufio_clients_lock));
 BUG_ON(dm_bufio_client_count < 0);

 dm_bufio_cache_size_latch = ACCESS_ONCE(dm_bufio_cache_size);




 if (!dm_bufio_cache_size_latch) {
  (void)cmpxchg(&dm_bufio_cache_size, 0,
         dm_bufio_default_cache_size);
  dm_bufio_cache_size_latch = dm_bufio_default_cache_size;
 }

 dm_bufio_cache_size_per_client = dm_bufio_cache_size_latch /
      (dm_bufio_client_count ? : 1);
}
