
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_region_hash {TYPE_2__* log; int hash_lock; } ;
struct dm_region {int state; } ;
typedef int region_t ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int (* in_sync ) (TYPE_2__*,int ,int) ;} ;


 int DM_RH_CLEAN ;
 int DM_RH_NOSYNC ;
 struct dm_region* __rh_lookup (struct dm_region_hash*,int ) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 int stub1 (TYPE_2__*,int ,int) ;

int dm_rh_get_state(struct dm_region_hash *rh, region_t region, int may_block)
{
 int r;
 struct dm_region *reg;

 read_lock(&rh->hash_lock);
 reg = __rh_lookup(rh, region);
 read_unlock(&rh->hash_lock);

 if (reg)
  return reg->state;





 r = rh->log->type->in_sync(rh->log, region, may_block);





 return r == 1 ? DM_RH_CLEAN : DM_RH_NOSYNC;
}
