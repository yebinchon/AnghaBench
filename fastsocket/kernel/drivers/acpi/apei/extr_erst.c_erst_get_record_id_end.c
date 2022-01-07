
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ refcount; int lock; } ;


 int BUG_ON (int) ;
 int __erst_record_id_cache_compact () ;
 int erst_disable ;
 TYPE_1__ erst_record_id_cache ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void erst_get_record_id_end(void)
{





 BUG_ON(erst_disable);

 mutex_lock(&erst_record_id_cache.lock);
 erst_record_id_cache.refcount--;
 BUG_ON(erst_record_id_cache.refcount < 0);
 __erst_record_id_cache_compact();
 mutex_unlock(&erst_record_id_cache.lock);
}
