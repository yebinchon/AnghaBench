
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {scalar_t__ wwpn; int d_id; } ;
struct zfcp_erp_action {struct zfcp_port* port; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {scalar_t__ peer_wwpn; int peer_d_id; } ;


 int ZFCP_ERP_FAILED ;
 int zfcp_erp_port_failed (struct zfcp_port*,char*,int *) ;
 int zfcp_erp_port_strategy_open_port (struct zfcp_erp_action*) ;

__attribute__((used)) static int zfcp_erp_open_ptp_port(struct zfcp_erp_action *act)
{
 struct zfcp_adapter *adapter = act->adapter;
 struct zfcp_port *port = act->port;

 if (port->wwpn != adapter->peer_wwpn) {
  zfcp_erp_port_failed(port, "eroptp1", ((void*)0));
  return ZFCP_ERP_FAILED;
 }
 port->d_id = adapter->peer_d_id;
 return zfcp_erp_port_strategy_open_port(act);
}
