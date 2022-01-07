
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; } ;
struct fcoe_port {struct bnx2fc_interface* priv; } ;
struct fc_lport {int dummy; } ;
struct bnx2fc_interface {struct bnx2fc_hba* hba; } ;
struct bnx2fc_hba {int adapter_state; struct net_device* phys_dev; } ;


 int ADAPTER_STATE_LINK_DOWN ;
 int IFF_UP ;
 int clear_bit (int ,int *) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int bnx2fc_link_ok(struct fc_lport *lport)
{
 struct fcoe_port *port = lport_priv(lport);
 struct bnx2fc_interface *interface = port->priv;
 struct bnx2fc_hba *hba = interface->hba;
 struct net_device *dev = hba->phys_dev;
 int rc = 0;

 if ((dev->flags & IFF_UP) && netif_carrier_ok(dev))
  clear_bit(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
 else {
  set_bit(ADAPTER_STATE_LINK_DOWN, &hba->adapter_state);
  rc = -1;
 }
 return rc;
}
