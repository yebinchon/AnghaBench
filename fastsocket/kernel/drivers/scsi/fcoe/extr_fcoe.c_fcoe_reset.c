
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_port {struct fcoe_interface* priv; } ;
struct fcoe_interface {int dummy; } ;
struct fcoe_ctlr_device {scalar_t__ enabled; } ;
struct fcoe_ctlr {int lp; } ;
struct fc_lport {int dummy; } ;
struct Scsi_Host {int dummy; } ;


 scalar_t__ FCOE_CTLR_DISABLED ;
 int fcoe_clean_pending_queue (int ) ;
 int fcoe_ctlr_link_down (struct fcoe_ctlr*) ;
 int fcoe_ctlr_link_up (struct fcoe_ctlr*) ;
 struct fcoe_ctlr_device* fcoe_ctlr_to_ctlr_dev (struct fcoe_ctlr*) ;
 int fcoe_link_ok (int ) ;
 struct fcoe_ctlr* fcoe_to_ctlr (struct fcoe_interface*) ;
 struct fcoe_port* lport_priv (struct fc_lport*) ;
 struct fc_lport* shost_priv (struct Scsi_Host*) ;

__attribute__((used)) static int fcoe_reset(struct Scsi_Host *shost)
{
 struct fc_lport *lport = shost_priv(shost);
 struct fcoe_port *port = lport_priv(lport);
 struct fcoe_interface *fcoe = port->priv;
 struct fcoe_ctlr *ctlr = fcoe_to_ctlr(fcoe);
 struct fcoe_ctlr_device *cdev = fcoe_ctlr_to_ctlr_dev(ctlr);

 fcoe_ctlr_link_down(ctlr);
 fcoe_clean_pending_queue(ctlr->lp);

 if (cdev->enabled != FCOE_CTLR_DISABLED &&
     !fcoe_link_ok(ctlr->lp))
  fcoe_ctlr_link_up(ctlr);
 return 0;
}
