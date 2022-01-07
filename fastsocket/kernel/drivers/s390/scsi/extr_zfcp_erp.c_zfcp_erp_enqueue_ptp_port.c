
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_port {int dummy; } ;
struct zfcp_adapter {int peer_d_id; int peer_wwpn; } ;


 scalar_t__ IS_ERR (struct zfcp_port*) ;
 int _zfcp_erp_port_reopen (struct zfcp_port*,int ,char*,int *) ;
 struct zfcp_port* zfcp_port_enqueue (struct zfcp_adapter*,int ,int ,int ) ;
 int zfcp_port_put (struct zfcp_port*) ;

__attribute__((used)) static void zfcp_erp_enqueue_ptp_port(struct zfcp_adapter *adapter)
{
 struct zfcp_port *port;
 port = zfcp_port_enqueue(adapter, adapter->peer_wwpn, 0,
     adapter->peer_d_id);
 if (IS_ERR(port))
  return;
 _zfcp_erp_port_reopen(port, 0, "ereptp1", ((void*)0));
 zfcp_port_put(port);
}
