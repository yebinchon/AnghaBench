
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct fcoe_fc_els_lesb {int lesb_fcs_error; int lesb_err_block; int lesb_symb_err; int lesb_miss_fka; int lesb_vlink_fail; int lesb_link_fail; } ;
struct TYPE_2__ {void* lesb_fcs_error; void* lesb_err_block; void* lesb_symb_err; void* lesb_miss_fka; void* lesb_vlink_fail; void* lesb_link_fail; } ;
struct fcoe_ctlr_device {TYPE_1__ lesb; } ;
struct fcoe_ctlr {int lp; } ;
struct fc_els_lesb {int dummy; } ;


 int __fcoe_get_lesb (int ,struct fc_els_lesb*,struct net_device*) ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 struct net_device* fcoe_get_netdev (int ) ;
 void* ntohl (int ) ;

void fcoe_ctlr_get_lesb(struct fcoe_ctlr_device *ctlr_dev)
{
 struct fcoe_ctlr *fip = fcoe_ctlr_device_priv(ctlr_dev);
 struct net_device *netdev = fcoe_get_netdev(fip->lp);
 struct fcoe_fc_els_lesb *fcoe_lesb;
 struct fc_els_lesb fc_lesb;

 __fcoe_get_lesb(fip->lp, &fc_lesb, netdev);
 fcoe_lesb = (struct fcoe_fc_els_lesb *)(&fc_lesb);

 ctlr_dev->lesb.lesb_link_fail =
  ntohl(fcoe_lesb->lesb_link_fail);
 ctlr_dev->lesb.lesb_vlink_fail =
  ntohl(fcoe_lesb->lesb_vlink_fail);
 ctlr_dev->lesb.lesb_miss_fka =
  ntohl(fcoe_lesb->lesb_miss_fka);
 ctlr_dev->lesb.lesb_symb_err =
  ntohl(fcoe_lesb->lesb_symb_err);
 ctlr_dev->lesb.lesb_err_block =
  ntohl(fcoe_lesb->lesb_err_block);
 ctlr_dev->lesb.lesb_fcs_error =
  ntohl(fcoe_lesb->lesb_fcs_error);
}
