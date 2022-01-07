
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zfcp_erp_action {int action; int status; struct zfcp_unit* unit; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_unit {int status; struct zfcp_erp_action erp_action; } ;
struct zfcp_port {int status; struct zfcp_erp_action erp_action; } ;
struct zfcp_adapter {int status; struct zfcp_erp_action erp_action; } ;






 int ZFCP_STATUS_COMMON_ERP_INUSE ;
 int ZFCP_STATUS_COMMON_RUNNING ;
 int ZFCP_STATUS_ERP_CLOSE_ONLY ;
 int atomic_read (int *) ;
 int atomic_set_mask (int ,int *) ;
 int memset (struct zfcp_erp_action*,int ,int) ;
 int zfcp_adapter_get (struct zfcp_adapter*) ;
 int zfcp_erp_action_dismiss_adapter (struct zfcp_adapter*) ;
 int zfcp_erp_action_dismiss_port (struct zfcp_port*) ;
 int zfcp_port_get (struct zfcp_port*) ;
 int zfcp_unit_get (struct zfcp_unit*) ;

__attribute__((used)) static struct zfcp_erp_action *zfcp_erp_setup_act(int need,
        struct zfcp_adapter *adapter,
        struct zfcp_port *port,
        struct zfcp_unit *unit)
{
 struct zfcp_erp_action *erp_action;
 u32 status = 0;

 switch (need) {
 case 128:
  zfcp_unit_get(unit);
  atomic_set_mask(ZFCP_STATUS_COMMON_ERP_INUSE, &unit->status);
  erp_action = &unit->erp_action;
  if (!(atomic_read(&unit->status) & ZFCP_STATUS_COMMON_RUNNING))
   status = ZFCP_STATUS_ERP_CLOSE_ONLY;
  break;

 case 130:
 case 129:
  zfcp_port_get(port);
  zfcp_erp_action_dismiss_port(port);
  atomic_set_mask(ZFCP_STATUS_COMMON_ERP_INUSE, &port->status);
  erp_action = &port->erp_action;
  if (!(atomic_read(&port->status) & ZFCP_STATUS_COMMON_RUNNING))
   status = ZFCP_STATUS_ERP_CLOSE_ONLY;
  break;

 case 131:
  zfcp_adapter_get(adapter);
  zfcp_erp_action_dismiss_adapter(adapter);
  atomic_set_mask(ZFCP_STATUS_COMMON_ERP_INUSE, &adapter->status);
  erp_action = &adapter->erp_action;
  if (!(atomic_read(&adapter->status) &
        ZFCP_STATUS_COMMON_RUNNING))
   status = ZFCP_STATUS_ERP_CLOSE_ONLY;
  break;

 default:
  return ((void*)0);
 }

 memset(erp_action, 0, sizeof(struct zfcp_erp_action));
 erp_action->adapter = adapter;
 erp_action->port = port;
 erp_action->unit = unit;
 erp_action->action = need;
 erp_action->status = status;

 return erp_action;
}
