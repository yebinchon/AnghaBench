
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int status; } ;
struct zfcp_erp_action {int step; int status; struct zfcp_unit* unit; } ;


 int ZFCP_ERP_EXIT ;
 int ZFCP_ERP_FAILED ;



 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_ERP_CLOSE_ONLY ;
 int atomic_read (int *) ;
 int zfcp_erp_unit_strategy_clearstati (struct zfcp_unit*) ;
 int zfcp_erp_unit_strategy_close (struct zfcp_erp_action*) ;
 int zfcp_erp_unit_strategy_open (struct zfcp_erp_action*) ;

__attribute__((used)) static int zfcp_erp_unit_strategy(struct zfcp_erp_action *erp_action)
{
 struct zfcp_unit *unit = erp_action->unit;

 switch (erp_action->step) {
 case 130:
  zfcp_erp_unit_strategy_clearstati(unit);
  if (atomic_read(&unit->status) & ZFCP_STATUS_COMMON_OPEN)
   return zfcp_erp_unit_strategy_close(erp_action);

 case 129:
  if (atomic_read(&unit->status) & ZFCP_STATUS_COMMON_OPEN)
   return ZFCP_ERP_FAILED;
  if (erp_action->status & ZFCP_STATUS_ERP_CLOSE_ONLY)
   return ZFCP_ERP_EXIT;
  return zfcp_erp_unit_strategy_open(erp_action);

 case 128:
  if (atomic_read(&unit->status) & ZFCP_STATUS_COMMON_OPEN)
   return ZFCP_ERP_SUCCEEDED;
 }
 return ZFCP_ERP_FAILED;
}
