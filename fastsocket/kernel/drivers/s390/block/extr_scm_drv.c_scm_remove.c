
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_device {int lock; int dev; } ;
struct scm_blk_dev {int dummy; } ;


 struct scm_blk_dev* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int kfree (struct scm_blk_dev*) ;
 int scm_blk_dev_cleanup (struct scm_blk_dev*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int scm_remove(struct scm_device *scmdev)
{
 struct scm_blk_dev *bdev;

 spin_lock_irq(&scmdev->lock);
 bdev = dev_get_drvdata(&scmdev->dev);
 spin_unlock_irq(&scmdev->lock);
 scm_blk_dev_cleanup(bdev);
 spin_lock_irq(&scmdev->lock);
 dev_set_drvdata(&scmdev->dev, ((void*)0));
 spin_unlock_irq(&scmdev->lock);
 kfree(bdev);

 return 0;
}
