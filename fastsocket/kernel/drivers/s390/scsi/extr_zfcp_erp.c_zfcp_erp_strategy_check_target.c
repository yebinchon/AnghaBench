
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int dummy; } ;
struct zfcp_port {int dummy; } ;
struct zfcp_erp_action {int action; struct zfcp_unit* unit; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int dummy; } ;






 int zfcp_erp_strategy_check_adapter (struct zfcp_adapter*,int) ;
 int zfcp_erp_strategy_check_port (struct zfcp_port*,int) ;
 int zfcp_erp_strategy_check_unit (struct zfcp_unit*,int) ;

__attribute__((used)) static int zfcp_erp_strategy_check_target(struct zfcp_erp_action *erp_action,
       int result)
{
 struct zfcp_adapter *adapter = erp_action->adapter;
 struct zfcp_port *port = erp_action->port;
 struct zfcp_unit *unit = erp_action->unit;

 switch (erp_action->action) {

 case 128:
  result = zfcp_erp_strategy_check_unit(unit, result);
  break;

 case 129:
 case 130:
  result = zfcp_erp_strategy_check_port(port, result);
  break;

 case 131:
  result = zfcp_erp_strategy_check_adapter(adapter, result);
  break;
 }
 return result;
}
