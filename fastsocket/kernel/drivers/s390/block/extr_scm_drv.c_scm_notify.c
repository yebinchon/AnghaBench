
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_device {scalar_t__ address; int dev; } ;
struct scm_blk_dev {int dummy; } ;
typedef enum scm_event { ____Placeholder_scm_event } scm_event ;




 int SCM_LOG (int,char*) ;
 int SCM_LOG_STATE (int,struct scm_device*) ;
 struct scm_blk_dev* dev_get_drvdata (int *) ;
 int pr_info (char*,unsigned long) ;
 int scm_blk_set_available (struct scm_blk_dev*) ;

__attribute__((used)) static void scm_notify(struct scm_device *scmdev, enum scm_event event)
{
 struct scm_blk_dev *bdev = dev_get_drvdata(&scmdev->dev);

 switch (event) {
 case 128:
  pr_info("%lu: The capabilities of the SCM increment changed\n",
   (unsigned long) scmdev->address);
  SCM_LOG(2, "State changed");
  SCM_LOG_STATE(2, scmdev);
  break;
 case 129:
  SCM_LOG(2, "Increment available");
  SCM_LOG_STATE(2, scmdev);
  scm_blk_set_available(bdev);
  break;
 }
}
