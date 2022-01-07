
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int step; } ;


 int ENOMEM ;
 int ZFCP_ERP_CONTINUES ;
 int ZFCP_ERP_FAILED ;
 int ZFCP_ERP_NOMEM ;
 int ZFCP_ERP_STEP_UNIT_OPENING ;
 int zfcp_fsf_open_unit (struct zfcp_erp_action*) ;

__attribute__((used)) static int zfcp_erp_unit_strategy_open(struct zfcp_erp_action *erp_action)
{
 int retval = zfcp_fsf_open_unit(erp_action);
 if (retval == -ENOMEM)
  return ZFCP_ERP_NOMEM;
 erp_action->step = ZFCP_ERP_STEP_UNIT_OPENING;
 if (retval)
  return ZFCP_ERP_FAILED;
 return ZFCP_ERP_CONTINUES;
}
