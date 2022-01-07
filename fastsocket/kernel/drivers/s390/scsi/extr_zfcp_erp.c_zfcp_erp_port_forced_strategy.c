
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int status; } ;
struct zfcp_erp_action {int step; struct zfcp_port* port; } ;


 int ZFCP_ERP_FAILED ;


 int ZFCP_ERP_SUCCEEDED ;
 int ZFCP_STATUS_COMMON_OPEN ;
 int ZFCP_STATUS_PORT_PHYS_OPEN ;
 int atomic_read (int *) ;
 int zfcp_erp_port_forced_strategy_close (struct zfcp_erp_action*) ;
 int zfcp_erp_port_strategy_clearstati (struct zfcp_port*) ;

__attribute__((used)) static int zfcp_erp_port_forced_strategy(struct zfcp_erp_action *erp_action)
{
 struct zfcp_port *port = erp_action->port;
 int status = atomic_read(&port->status);

 switch (erp_action->step) {
 case 128:
  zfcp_erp_port_strategy_clearstati(port);
  if ((status & ZFCP_STATUS_PORT_PHYS_OPEN) &&
      (status & ZFCP_STATUS_COMMON_OPEN))
   return zfcp_erp_port_forced_strategy_close(erp_action);
  else
   return ZFCP_ERP_FAILED;

 case 129:
  if (!(status & ZFCP_STATUS_PORT_PHYS_OPEN))
   return ZFCP_ERP_SUCCEEDED;
 }
 return ZFCP_ERP_FAILED;
}
