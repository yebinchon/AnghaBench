
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urdev {int class; } ;
struct ccw_device {int dev; int handler; } ;


 int DEV_CLASS_UR_I ;
 int DEV_CLASS_UR_O ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int TRACE (char*,struct ccw_device*) ;
 int dev_set_drvdata (int *,struct urdev*) ;
 int get_ccwdev_lock (struct ccw_device*) ;
 int get_urd_class (struct urdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;
 int ur_create_attributes (int *) ;
 int ur_int_handler ;
 int ur_remove_attributes (int *) ;
 struct urdev* urdev_alloc (struct ccw_device*) ;
 int urdev_put (struct urdev*) ;
 int vmur_mutex ;

__attribute__((used)) static int ur_probe(struct ccw_device *cdev)
{
 struct urdev *urd;
 int rc;

 TRACE("ur_probe: cdev=%p\n", cdev);

 mutex_lock(&vmur_mutex);
 urd = urdev_alloc(cdev);
 if (!urd) {
  rc = -ENOMEM;
  goto fail_unlock;
 }

 rc = ur_create_attributes(&cdev->dev);
 if (rc) {
  rc = -ENOMEM;
  goto fail_urdev_put;
 }
 cdev->handler = ur_int_handler;


 urd->class = get_urd_class(urd);
 if (urd->class < 0) {
  rc = urd->class;
  goto fail_remove_attr;
 }
 if ((urd->class != DEV_CLASS_UR_I) && (urd->class != DEV_CLASS_UR_O)) {
  rc = -EOPNOTSUPP;
  goto fail_remove_attr;
 }
 spin_lock_irq(get_ccwdev_lock(cdev));
 dev_set_drvdata(&cdev->dev, urd);
 spin_unlock_irq(get_ccwdev_lock(cdev));

 mutex_unlock(&vmur_mutex);
 return 0;

fail_remove_attr:
 ur_remove_attributes(&cdev->dev);
fail_urdev_put:
 urdev_put(urd);
fail_unlock:
 mutex_unlock(&vmur_mutex);
 return rc;
}
