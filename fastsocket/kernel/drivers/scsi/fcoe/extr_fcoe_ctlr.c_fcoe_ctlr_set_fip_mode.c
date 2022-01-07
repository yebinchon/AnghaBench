
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_ctlr_device {int mode; } ;
struct fcoe_ctlr {int mode; int ctlr_mutex; struct fc_lport* lp; } ;
struct fc_lport {int dummy; } ;




 int FIP_MODE_FABRIC ;
 int FIP_MODE_VN2VN ;
 struct fcoe_ctlr* fcoe_ctlr_device_priv (struct fcoe_ctlr_device*) ;
 int fcoe_ctlr_mode_set (struct fc_lport*,struct fcoe_ctlr*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void fcoe_ctlr_set_fip_mode(struct fcoe_ctlr_device *ctlr_dev)
{
 struct fcoe_ctlr *ctlr = fcoe_ctlr_device_priv(ctlr_dev);
 struct fc_lport *lport = ctlr->lp;

 mutex_lock(&ctlr->ctlr_mutex);
 switch (ctlr_dev->mode) {
 case 128:
  ctlr->mode = FIP_MODE_VN2VN;
  break;
 case 129:
 default:
  ctlr->mode = FIP_MODE_FABRIC;
  break;
 }

 mutex_unlock(&ctlr->ctlr_mutex);

 fcoe_ctlr_mode_set(lport, ctlr, ctlr->mode);
}
