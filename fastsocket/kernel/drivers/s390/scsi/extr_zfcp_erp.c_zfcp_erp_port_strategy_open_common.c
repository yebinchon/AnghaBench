
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int d_id; int status; } ;
struct zfcp_erp_action {int step; struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int scsi_host; } ;


 int FC_PORTTYPE_PTP ;
 int ZFCP_ERP_EXIT ;
 int ZFCP_ERP_FAILED ;




 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_COMMON_NOESC ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int atomic_read (int *) ;
 int fc_host_port_type (int ) ;
 int zfcp_erp_open_ptp_port (struct zfcp_erp_action*) ;
 int zfcp_erp_port_strategy_open_port (struct zfcp_erp_action*) ;
 int zfcp_fc_trigger_did_lookup (struct zfcp_port*) ;

__attribute__((used)) static int zfcp_erp_port_strategy_open_common(struct zfcp_erp_action *act)
{
 struct zfcp_adapter *adapter = act->adapter;
 struct zfcp_port *port = act->port;
 int p_status = atomic_read(&port->status);

 switch (act->step) {
 case 128:
 case 131:
 case 130:
  if (fc_host_port_type(adapter->scsi_host) == FC_PORTTYPE_PTP)
   return zfcp_erp_open_ptp_port(act);
  if (!port->d_id) {
   zfcp_fc_trigger_did_lookup(port);
   return ZFCP_ERP_EXIT;
  }
  return zfcp_erp_port_strategy_open_port(act);

 case 129:

  if (p_status & ZFCP_STATUS_COMMON_OPEN) {
   if (!port->d_id) {
    zfcp_fc_trigger_did_lookup(port);
    return ZFCP_ERP_EXIT;
   }
   return ZFCP_ERP_SUCCEEDED;
  }
  if (port->d_id && !(p_status & ZFCP_STATUS_COMMON_NOESC)) {
   port->d_id = 0;
   return ZFCP_ERP_FAILED;
  }

 }
 return ZFCP_ERP_FAILED;
}
