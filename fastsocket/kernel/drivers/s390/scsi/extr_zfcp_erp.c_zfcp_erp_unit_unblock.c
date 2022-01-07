
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int status; } ;


 int ZFCP_STATUS_COMMON_UNBLOCKED ;
 int atomic_set_mask (int ,int *) ;
 scalar_t__ status_change_set (int ,int *) ;
 int zfcp_dbf_rec_unit (char*,int *,struct zfcp_unit*) ;

__attribute__((used)) static void zfcp_erp_unit_unblock(struct zfcp_unit *unit)
{
 if (status_change_set(ZFCP_STATUS_COMMON_UNBLOCKED, &unit->status))
  zfcp_dbf_rec_unit("eruubl1", ((void*)0), unit);
 atomic_set_mask(ZFCP_STATUS_COMMON_UNBLOCKED, &unit->status);
}
