
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270 {struct raw3270* ascebc; struct ccw_device* cdev; int list; int minor; scalar_t__ cltubdev; scalar_t__ clttydev; } ;
struct ccw_device {int dev; int * handler; } ;


 int IBM_FS3270_MAJOR ;
 int IBM_TTY3270_MAJOR ;
 int IS_ERR (scalar_t__) ;
 int MKDEV (int ,int ) ;
 int class3270 ;
 int dev_set_drvdata (int *,int *) ;
 int device_destroy (int ,int ) ;
 int kfree (struct raw3270*) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int raw3270_mutex ;

__attribute__((used)) static void
raw3270_delete_device(struct raw3270 *rp)
{
 struct ccw_device *cdev;


 mutex_lock(&raw3270_mutex);
 if (rp->clttydev && !IS_ERR(rp->clttydev))
  device_destroy(class3270, MKDEV(IBM_TTY3270_MAJOR, rp->minor));
 if (rp->cltubdev && !IS_ERR(rp->cltubdev))
  device_destroy(class3270, MKDEV(IBM_FS3270_MAJOR, rp->minor));
 list_del_init(&rp->list);
 mutex_unlock(&raw3270_mutex);


 cdev = rp->cdev;
 rp->cdev = ((void*)0);
 dev_set_drvdata(&cdev->dev, ((void*)0));
 cdev->handler = ((void*)0);


 put_device(&cdev->dev);


 kfree(rp->ascebc);
 kfree(rp);
}
