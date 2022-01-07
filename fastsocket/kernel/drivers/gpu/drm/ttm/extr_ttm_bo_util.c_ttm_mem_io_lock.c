
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_mem_type_manager {int io_reserve_mutex; int io_reserve_fastpath; } ;


 scalar_t__ likely (int ) ;
 int mutex_lock (int *) ;
 int mutex_lock_interruptible (int *) ;

int ttm_mem_io_lock(struct ttm_mem_type_manager *man, bool interruptible)
{
 if (likely(man->io_reserve_fastpath))
  return 0;

 if (interruptible)
  return mutex_lock_interruptible(&man->io_reserve_mutex);

 mutex_lock(&man->io_reserve_mutex);
 return 0;
}
