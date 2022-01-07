
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_interface {int netdev; } ;
struct fcoe_fcf_device {int vlan_id; } ;
struct fcoe_ctlr_device {int dummy; } ;
struct fcoe_ctlr {int dummy; } ;


 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 struct fcoe_interface* fcoe_ctlr_priv (struct fcoe_ctlr*) ;
 struct fcoe_ctlr_device* fcoe_fcf_dev_to_ctlr_dev (struct fcoe_fcf_device*) ;
 int vlan_dev_vlan_id (int ) ;

__attribute__((used)) static void fcoe_fcf_get_vlan_id(struct fcoe_fcf_device *fcf_dev)
{
 struct fcoe_ctlr_device *ctlr_dev =
  fcoe_fcf_dev_to_ctlr_dev(fcf_dev);
 struct fcoe_ctlr *ctlr = fcoe_ctlr_device_priv(ctlr_dev);
 struct fcoe_interface *fcoe = fcoe_ctlr_priv(ctlr);

 fcf_dev->vlan_id = vlan_dev_vlan_id(fcoe->netdev);
}
