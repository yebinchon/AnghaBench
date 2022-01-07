
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; } ;
struct TYPE_4__ {TYPE_1__ hash; } ;
struct ttm_lock {TYPE_2__ base; int vt_holder; } ;


 int TTM_REF_USAGE ;
 int ttm_ref_object_base_unref (int ,int ,int ) ;

int ttm_vt_unlock(struct ttm_lock *lock)
{
 return ttm_ref_object_base_unref(lock->vt_holder,
      lock->base.hash.key, TTM_REF_USAGE);
}
