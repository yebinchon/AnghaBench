
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct dasd_eckd_private {scalar_t__ count; } ;
struct dasd_device {int features; int cdev; scalar_t__ private; } ;
struct dasd_ccw_req {int dummy; } ;
struct dasd_block {int dummy; } ;


 scalar_t__ DASD_ECKD_CHANQ_MAX_SIZE ;
 int DASD_FEATURE_USERAW ;
 int EBUSY ;
 struct dasd_ccw_req* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 struct dasd_device* dasd_alias_get_start_dev (struct dasd_device*) ;
 struct dasd_ccw_req* dasd_eckd_build_cp (struct dasd_device*,struct dasd_block*,struct request*) ;
 struct dasd_ccw_req* dasd_raw_build_cp (struct dasd_device*,struct dasd_block*,struct request*) ;
 int get_ccwdev_lock (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static struct dasd_ccw_req *dasd_eckd_build_alias_cp(struct dasd_device *base,
           struct dasd_block *block,
           struct request *req)
{
 struct dasd_eckd_private *private;
 struct dasd_device *startdev;
 unsigned long flags;
 struct dasd_ccw_req *cqr;

 startdev = dasd_alias_get_start_dev(base);
 if (!startdev)
  startdev = base;
 private = (struct dasd_eckd_private *) startdev->private;
 if (private->count >= DASD_ECKD_CHANQ_MAX_SIZE)
  return ERR_PTR(-EBUSY);

 spin_lock_irqsave(get_ccwdev_lock(startdev->cdev), flags);
 private->count++;
 if ((base->features & DASD_FEATURE_USERAW))
  cqr = dasd_raw_build_cp(startdev, block, req);
 else
  cqr = dasd_eckd_build_cp(startdev, block, req);
 if (IS_ERR(cqr))
  private->count--;
 spin_unlock_irqrestore(get_ccwdev_lock(startdev->cdev), flags);
 return cqr;
}
