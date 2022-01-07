
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ oper_state; } ;
struct scm_device {int lock; int dev; TYPE_1__ attrs; } ;
struct scm_blk_dev {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ OP_STATE_GOOD ;
 int SCM_LOG (int,char*) ;
 int SCM_LOG_STATE (int,struct scm_device*) ;
 int dev_set_drvdata (int *,struct scm_blk_dev*) ;
 int kfree (struct scm_blk_dev*) ;
 struct scm_blk_dev* kzalloc (int,int ) ;
 int scm_blk_dev_setup (struct scm_blk_dev*,struct scm_device*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int scm_probe(struct scm_device *scmdev)
{
 struct scm_blk_dev *bdev;
 int ret;

 SCM_LOG(2, "probe");
 SCM_LOG_STATE(2, scmdev);

 if (scmdev->attrs.oper_state != OP_STATE_GOOD)
  return -EINVAL;

 bdev = kzalloc(sizeof(*bdev), GFP_KERNEL);
 if (!bdev)
  return -ENOMEM;

 spin_lock_irq(&scmdev->lock);
 dev_set_drvdata(&scmdev->dev, bdev);
 spin_unlock_irq(&scmdev->lock);

 ret = scm_blk_dev_setup(bdev, scmdev);
 if (ret) {
  spin_lock_irq(&scmdev->lock);
  dev_set_drvdata(&scmdev->dev, ((void*)0));
  spin_unlock_irq(&scmdev->lock);
  kfree(bdev);
  goto out;
 }

out:
 return ret;
}
