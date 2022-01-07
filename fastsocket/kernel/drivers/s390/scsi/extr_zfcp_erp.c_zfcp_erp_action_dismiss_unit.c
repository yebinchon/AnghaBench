
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int erp_action; int status; } ;


 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int atomic_read (int *) ;
 int zfcp_erp_action_dismiss (int *) ;

__attribute__((used)) static void zfcp_erp_action_dismiss_unit(struct zfcp_unit *unit)
{
 if (atomic_read(&unit->status) & ZFCP_STATUS_COMMON_ERP_INUSE)
  zfcp_erp_action_dismiss(&unit->erp_action);
}
