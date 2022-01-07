
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct net_device {int mtu; int features; } ;
struct fcoe_port {int timer; scalar_t__ fcoe_pending_queue_active; int fcoe_pending_queue; struct fcoe_interface* priv; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_hdr {int dummy; } ;
struct fcoe_ctlr {int ctl_src_addr; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_lport {int vport; } ;


 int EINVAL ;
 int FCOE_MTU ;
 int FCOE_NETDEV_DBG (struct net_device*,char*,int) ;
 int NETDEV_FCOE_WWNN ;
 int NETDEV_FCOE_WWPN ;
 int NETIF_F_FCOE_MTU ;
 scalar_t__ fc_set_mfs (struct fc_lport*,int) ;
 int fc_set_wwnn (struct fc_lport*,int ) ;
 int fc_set_wwpn (struct fc_lport*,int ) ;
 scalar_t__ fcoe_get_wwn (struct net_device*,int *,int ) ;
 int fcoe_link_speed_update (struct fc_lport*) ;
 int fcoe_netdev_features_change (struct fc_lport*,struct net_device*) ;
 int fcoe_queue_timer ;
 struct fcoe_ctlr* fcoe_to_ctlr (struct fcoe_interface*) ;
 int fcoe_wwn_from_mac (int ,int,int ) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 int setup_timer (int *,int ,unsigned long) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static int fcoe_netdev_config(struct fc_lport *lport, struct net_device *netdev)
{
 u32 mfs;
 u64 wwnn, wwpn;
 struct fcoe_interface *fcoe;
 struct fcoe_ctlr *ctlr;
 struct fcoe_port *port;


 port = lport_priv(lport);
 fcoe = port->priv;
 ctlr = fcoe_to_ctlr(fcoe);






 mfs = netdev->mtu;
 if (netdev->features & NETIF_F_FCOE_MTU) {
  mfs = FCOE_MTU;
  FCOE_NETDEV_DBG(netdev, "Supports FCOE_MTU of %d bytes\n", mfs);
 }
 mfs -= (sizeof(struct fcoe_hdr) + sizeof(struct fcoe_crc_eof));
 if (fc_set_mfs(lport, mfs))
  return -EINVAL;


 fcoe_netdev_features_change(lport, netdev);

 skb_queue_head_init(&port->fcoe_pending_queue);
 port->fcoe_pending_queue_active = 0;
 setup_timer(&port->timer, fcoe_queue_timer, (unsigned long)lport);

 fcoe_link_speed_update(lport);

 if (!lport->vport) {
  if (fcoe_get_wwn(netdev, &wwnn, NETDEV_FCOE_WWNN))
   wwnn = fcoe_wwn_from_mac(ctlr->ctl_src_addr, 1, 0);
  fc_set_wwnn(lport, wwnn);
  if (fcoe_get_wwn(netdev, &wwpn, NETDEV_FCOE_WWPN))
   wwpn = fcoe_wwn_from_mac(ctlr->ctl_src_addr,
       2, 0);
  fc_set_wwpn(lport, wwpn);
 }

 return 0;
}
