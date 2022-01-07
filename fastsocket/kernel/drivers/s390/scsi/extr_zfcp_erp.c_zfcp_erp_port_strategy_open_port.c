
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_erp_action {int step; } ;


 int ENOMEM ;
 int ZFCP_ERP_CONTINUES ;
 int ZFCP_ERP_FAILED ;
 int ZFCP_ERP_NOMEM ;
 int ZFCP_ERP_STEP_PORT_OPENING ;
 int zfcp_fsf_open_port (struct zfcp_erp_action*) ;

__attribute__((used)) static int zfcp_erp_port_strategy_open_port(struct zfcp_erp_action *erp_action)
{
 int retval;

 retval = zfcp_fsf_open_port(erp_action);
 if (retval == -ENOMEM)
  return ZFCP_ERP_NOMEM;
 erp_action->step = ZFCP_ERP_STEP_PORT_OPENING;
 if (retval)
  return ZFCP_ERP_FAILED;
 return ZFCP_ERP_CONTINUES;
}
