
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf_device {struct fcoe_fcf* priv; scalar_t__ selected; int fka_period; int priority; int mac; int vfid; int fc_map; int switch_name; int fabric_name; } ;
struct fcoe_fcf {int list; struct fcoe_fcf_device* fcf_dev; int fka_period; int pri; int fcf_mac; int vfid; int fc_map; int switch_name; int fabric_name; struct fcoe_ctlr* fip; } ;
struct fcoe_ctlr_device {int lock; } ;
struct fcoe_ctlr {int fcf_count; int fcfs; } ;


 int BUG_ON (struct fcoe_fcf*) ;
 int ENOMEM ;
 int ETH_ALEN ;
 int LIBFCOE_FIP_DBG (struct fcoe_ctlr*,char*,int ,int ) ;
 struct fcoe_ctlr_device* fcoe_ctlr_to_ctlr_dev (struct fcoe_ctlr*) ;
 struct fcoe_fcf_device* fcoe_fcf_device_add (struct fcoe_ctlr_device*,struct fcoe_fcf_device*) ;
 int list_add (int *,int *) ;
 int memcpy (int ,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fcoe_sysfs_fcf_add(struct fcoe_fcf *new)
{
 struct fcoe_ctlr *fip = new->fip;
 struct fcoe_ctlr_device *ctlr_dev;
 struct fcoe_fcf_device temp, *fcf_dev;
 int rc = 0;

 LIBFCOE_FIP_DBG(fip, "New FCF fab %16.16llx mac %pM\n",
   new->fabric_name, new->fcf_mac);

 temp.fabric_name = new->fabric_name;
 temp.switch_name = new->switch_name;
 temp.fc_map = new->fc_map;
 temp.vfid = new->vfid;
 memcpy(temp.mac, new->fcf_mac, ETH_ALEN);
 temp.priority = new->pri;
 temp.fka_period = new->fka_period;
 temp.selected = 0;
 ctlr_dev = fcoe_ctlr_to_ctlr_dev(fip);
 if (ctlr_dev) {
  mutex_lock(&ctlr_dev->lock);
  fcf_dev = fcoe_fcf_device_add(ctlr_dev, &temp);
  if (unlikely(!fcf_dev)) {
   rc = -ENOMEM;
   mutex_unlock(&ctlr_dev->lock);
   goto out;
  }
  BUG_ON(fcf_dev->priv);

  fcf_dev->priv = new;
  new->fcf_dev = fcf_dev;
  mutex_unlock(&ctlr_dev->lock);
 }

 list_add(&new->list, &fip->fcfs);
 fip->fcf_count++;

out:
 return rc;
}
