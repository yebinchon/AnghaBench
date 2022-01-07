
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcoe_fcf_device {int dummy; } ;
struct fcoe_fcf {int * fcf_dev; int list; struct fcoe_ctlr* fip; } ;
struct fcoe_ctlr_device {int lock; } ;
struct fcoe_ctlr {int fcf_count; } ;


 int WARN_ON (int) ;
 struct fcoe_ctlr_device* fcoe_ctlr_to_ctlr_dev (struct fcoe_ctlr*) ;
 int fcoe_fcf_device_delete (struct fcoe_fcf_device*) ;
 struct fcoe_fcf_device* fcoe_fcf_to_fcf_dev (struct fcoe_fcf*) ;
 int kfree (struct fcoe_fcf*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fcoe_sysfs_fcf_del(struct fcoe_fcf *new)
{
 struct fcoe_ctlr *fip = new->fip;
 struct fcoe_ctlr_device *cdev;
 struct fcoe_fcf_device *fcf_dev;

 list_del(&new->list);
 fip->fcf_count--;
 cdev = fcoe_ctlr_to_ctlr_dev(fip);
 if (cdev) {
  mutex_lock(&cdev->lock);
  fcf_dev = fcoe_fcf_to_fcf_dev(new);
  WARN_ON(!fcf_dev);
  new->fcf_dev = ((void*)0);
  fcoe_fcf_device_delete(fcf_dev);
  kfree(new);
  mutex_unlock(&cdev->lock);
 }
}
