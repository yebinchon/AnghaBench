
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int dummy; } ;
struct zfcp_port {int dummy; } ;
struct zfcp_erp_action {int action; struct zfcp_unit* unit; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int service_level; } ;






 int ZFCP_ERP_SUCCEEDED ;
 int register_service_level (int *) ;
 int unregister_service_level (int *) ;
 int zfcp_adapter_put (struct zfcp_adapter*) ;
 int zfcp_fc_conditional_port_scan (struct zfcp_adapter*) ;
 int zfcp_port_put (struct zfcp_port*) ;
 int zfcp_scsi_schedule_rport_register (struct zfcp_port*) ;
 int zfcp_unit_put (struct zfcp_unit*) ;

__attribute__((used)) static void zfcp_erp_action_cleanup(struct zfcp_erp_action *act, int result)
{
 struct zfcp_adapter *adapter = act->adapter;
 struct zfcp_port *port = act->port;
 struct zfcp_unit *unit = act->unit;

 switch (act->action) {
 case 128:
  zfcp_unit_put(unit);
  break;

 case 130:
  if (result == ZFCP_ERP_SUCCEEDED)
   zfcp_scsi_schedule_rport_register(port);

 case 129:
  zfcp_port_put(port);
  break;

 case 131:
  if (result == ZFCP_ERP_SUCCEEDED) {
   register_service_level(&adapter->service_level);
   zfcp_fc_conditional_port_scan(adapter);
  } else
   unregister_service_level(&adapter->service_level);
  zfcp_adapter_put(adapter);
  break;
 }
}
