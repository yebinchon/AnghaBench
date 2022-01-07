
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf {scalar_t__ flogi_sent; } ;
struct fcoe_ctlr {int ctlr_mutex; int ctlr_lock; int * flogi_req; } ;


 int ENOENT ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*) ;
 int fcoe_ctlr_flogi_send_locked (struct fcoe_ctlr*) ;
 struct fcoe_fcf* fcoe_ctlr_select (struct fcoe_ctlr*) ;
 int fcoe_ctlr_solicit (struct fcoe_ctlr*,int *) ;
 int kfree_skb (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int fcoe_ctlr_flogi_retry(struct fcoe_ctlr *fip)
{
 struct fcoe_fcf *fcf;
 int error;

 mutex_lock(&fip->ctlr_mutex);
 spin_lock_bh(&fip->ctlr_lock);
 LIBFCOE_FIP_DBG(fip, "re-sending FLOGI - reselect\n");
 fcf = fcoe_ctlr_select(fip);
 if (!fcf || fcf->flogi_sent) {
  kfree_skb(fip->flogi_req);
  fip->flogi_req = ((void*)0);
  error = -ENOENT;
 } else {
  fcoe_ctlr_solicit(fip, ((void*)0));
  error = fcoe_ctlr_flogi_send_locked(fip);
 }
 spin_unlock_bh(&fip->ctlr_lock);
 mutex_unlock(&fip->ctlr_mutex);
 return error;
}
