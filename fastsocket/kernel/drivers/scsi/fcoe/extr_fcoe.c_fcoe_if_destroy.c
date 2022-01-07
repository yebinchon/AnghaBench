
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fcoe_port {int data_src_addr; int timer; struct fcoe_interface* priv; } ;
struct fcoe_interface {struct net_device* netdev; } ;
struct fc_lport {int host; scalar_t__ vport; } ;


 int FCOE_NETDEV_DBG (struct net_device*,char*) ;
 int del_timer_sync (int *) ;
 int dev_unicast_delete (struct net_device*,int ) ;
 int fc_exch_mgr_free (struct fc_lport*) ;
 int fc_fabric_logoff (struct fc_lport*) ;
 int fc_fcp_destroy (struct fc_lport*) ;
 int fc_lport_destroy (struct fc_lport*) ;
 int fc_lport_free_stats (struct fc_lport*) ;
 int fc_remove_host (int ) ;
 int fcoe_clean_pending_queue (struct fc_lport*) ;
 int fcoe_percpu_clean (struct fc_lport*) ;
 int is_zero_ether_addr (int ) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void fcoe_if_destroy(struct fc_lport *lport)
{
 struct fcoe_port *port = lport_priv(lport);
 struct fcoe_interface *fcoe = port->priv;
 struct net_device *netdev = fcoe->netdev;

 FCOE_NETDEV_DBG(netdev, "Destroying interface\n");


 fc_fabric_logoff(lport);


 fc_lport_destroy(lport);


 del_timer_sync(&port->timer);


 fcoe_clean_pending_queue(lport);

 rtnl_lock();
 if (!is_zero_ether_addr(port->data_src_addr))
  dev_unicast_delete(netdev, port->data_src_addr);
 rtnl_unlock();


 fcoe_percpu_clean(lport);


 fc_remove_host(lport->host);
 scsi_remove_host(lport->host);


 fc_fcp_destroy(lport);


 fc_exch_mgr_free(lport);


 fc_lport_free_stats(lport);





 if (lport->vport)
  scsi_host_put(lport->host);
}
