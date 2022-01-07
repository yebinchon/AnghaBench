
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mirror_set {int rh; } ;
typedef int region_t ;


 int DM_RH_CLEAN ;
 int DM_RH_DIRTY ;
 int dm_rh_get_state (int ,int ,int) ;

__attribute__((used)) static inline int region_in_sync(struct mirror_set *ms, region_t region,
     int may_block)
{
 int state = dm_rh_get_state(ms->rh, region, may_block);
 return state == DM_RH_CLEAN || state == DM_RH_DIRTY;
}
