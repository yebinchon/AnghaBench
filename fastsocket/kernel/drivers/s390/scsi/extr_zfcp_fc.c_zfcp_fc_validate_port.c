
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {scalar_t__ supported_classes; int unit_list_head; int status; struct zfcp_adapter* adapter; } ;
struct zfcp_adapter {int dummy; } ;


 int ZFCP_STATUS_COMMON_NOESC ;
 int atomic_clear_mask (int,int *) ;
 int atomic_read (int *) ;
 int list_empty (int *) ;
 int zfcp_erp_port_shutdown (struct zfcp_port*,int ,char*,int *) ;
 int zfcp_erp_wait (struct zfcp_adapter*) ;
 int zfcp_port_dequeue (struct zfcp_port*) ;
 int zfcp_port_put (struct zfcp_port*) ;

__attribute__((used)) static void zfcp_fc_validate_port(struct zfcp_port *port)
{
 struct zfcp_adapter *adapter = port->adapter;

 if (!(atomic_read(&port->status) & ZFCP_STATUS_COMMON_NOESC))
  return;

 atomic_clear_mask(ZFCP_STATUS_COMMON_NOESC, &port->status);

 if ((port->supported_classes != 0) ||
     !list_empty(&port->unit_list_head)) {
  zfcp_port_put(port);
  return;
 }
 zfcp_erp_port_shutdown(port, 0, "fcpval1", ((void*)0));
 zfcp_erp_wait(adapter);
 zfcp_port_put(port);
 zfcp_port_dequeue(port);
}
