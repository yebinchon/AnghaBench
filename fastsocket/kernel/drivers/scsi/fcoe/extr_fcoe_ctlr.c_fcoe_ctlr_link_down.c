
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr {scalar_t__ state; int lp; int ctlr_mutex; } ;


 scalar_t__ FIP_ST_LINK_WAIT ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*) ;
 int fc_linkdown (int ) ;
 int fcoe_ctlr_reset (struct fcoe_ctlr*) ;
 int fcoe_ctlr_set_state (struct fcoe_ctlr*,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int fcoe_ctlr_link_down(struct fcoe_ctlr *fip)
{
 int link_dropped;

 LIBFCOE_FIP_DBG(fip, "link down.\n");
 mutex_lock(&fip->ctlr_mutex);
 fcoe_ctlr_reset(fip);
 link_dropped = fip->state != FIP_ST_LINK_WAIT;
 fcoe_ctlr_set_state(fip, FIP_ST_LINK_WAIT);
 mutex_unlock(&fip->ctlr_mutex);

 if (link_dropped)
  fc_linkdown(fip->lp);
 return link_dropped;
}
