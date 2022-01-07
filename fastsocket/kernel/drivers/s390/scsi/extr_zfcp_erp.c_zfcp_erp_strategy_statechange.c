
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_unit {int status; } ;
struct zfcp_port {int status; } ;
struct zfcp_erp_action {int action; int status; struct zfcp_unit* unit; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int status; } ;






 int ZFCP_ERP_EXIT ;
 int ZFCP_STATUS_COMMON_ERP_FAILED ;
 int _zfcp_erp_adapter_reopen (struct zfcp_adapter*,int ,char*,int *) ;
 int _zfcp_erp_port_reopen (struct zfcp_port*,int ,char*,int *) ;
 int _zfcp_erp_unit_reopen (struct zfcp_unit*,int ,char*,int *) ;
 int zfcp_erp_strat_change_det (int *,int ) ;

__attribute__((used)) static int zfcp_erp_strategy_statechange(struct zfcp_erp_action *act, int ret)
{
 int action = act->action;
 struct zfcp_adapter *adapter = act->adapter;
 struct zfcp_port *port = act->port;
 struct zfcp_unit *unit = act->unit;
 u32 erp_status = act->status;

 switch (action) {
 case 131:
  if (zfcp_erp_strat_change_det(&adapter->status, erp_status)) {
   _zfcp_erp_adapter_reopen(adapter,
       ZFCP_STATUS_COMMON_ERP_FAILED,
       "ersscg1", ((void*)0));
   return ZFCP_ERP_EXIT;
  }
  break;

 case 129:
 case 130:
  if (zfcp_erp_strat_change_det(&port->status, erp_status)) {
   _zfcp_erp_port_reopen(port,
           ZFCP_STATUS_COMMON_ERP_FAILED,
           "ersscg2", ((void*)0));
   return ZFCP_ERP_EXIT;
  }
  break;

 case 128:
  if (zfcp_erp_strat_change_det(&unit->status, erp_status)) {
   _zfcp_erp_unit_reopen(unit,
           ZFCP_STATUS_COMMON_ERP_FAILED,
           "ersscg3", ((void*)0));
   return ZFCP_ERP_EXIT;
  }
  break;
 }
 return ret;
}
