
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_unit {int erp_counter; int status; } ;


 int ZFCP_SET ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int atomic_clear_mask (int,int *) ;
 int atomic_set (int *,int ) ;
 int atomic_set_mask (int,int *) ;
 scalar_t__ status_change_clear (int,int *) ;
 scalar_t__ status_change_set (int,int *) ;
 int zfcp_dbf_rec_unit (char*,void*,struct zfcp_unit*) ;

void zfcp_erp_modify_unit_status(struct zfcp_unit *unit, char *id, void *ref,
     u32 mask, int set_or_clear)
{
 if (set_or_clear == ZFCP_SET) {
  if (status_change_set(mask, &unit->status))
   zfcp_dbf_rec_unit(id, ref, unit);
  atomic_set_mask(mask, &unit->status);
 } else {
  if (status_change_clear(mask, &unit->status))
   zfcp_dbf_rec_unit(id, ref, unit);
  atomic_clear_mask(mask, &unit->status);
  if (mask & ZFCP_STATUS_COMMON_ERP_FAILED) {
   atomic_set(&unit->erp_counter, 0);
  }
 }
}
