
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct lcs_card {scalar_t__ thread_running_mask; scalar_t__ thread_allowed_mask; scalar_t__ thread_start_mask; int kernel_thread_starter; struct ccwgroup_device* gdev; } ;
struct TYPE_6__ {int kobj; } ;
struct ccwgroup_device {TYPE_1__** cdev; TYPE_2__ dev; } ;
struct TYPE_5__ {void* handler; } ;


 int ENODEV ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_DBF_TEXT_ (int,int ,char*,int) ;
 int dev_set_drvdata (TYPE_2__*,struct lcs_card*) ;
 int get_device (TYPE_2__*) ;
 struct lcs_card* lcs_alloc_card () ;
 int lcs_attr_group ;
 int lcs_free_card (struct lcs_card*) ;
 void* lcs_irq ;
 int lcs_start_kernel_thread ;
 int put_device (TYPE_2__*) ;
 int setup ;
 int sysfs_create_group (int *,int *) ;

__attribute__((used)) static int
lcs_probe_device(struct ccwgroup_device *ccwgdev)
{
 struct lcs_card *card;
 int ret;

 if (!get_device(&ccwgdev->dev))
  return -ENODEV;

 LCS_DBF_TEXT(2, setup, "add_dev");
        card = lcs_alloc_card();
        if (!card) {
  LCS_DBF_TEXT_(2, setup, "  rc%d", -ENOMEM);
  put_device(&ccwgdev->dev);
                return -ENOMEM;
        }
 ret = sysfs_create_group(&ccwgdev->dev.kobj, &lcs_attr_group);
 if (ret) {
  lcs_free_card(card);
  put_device(&ccwgdev->dev);
  return ret;
        }
 dev_set_drvdata(&ccwgdev->dev, card);
 ccwgdev->cdev[0]->handler = lcs_irq;
 ccwgdev->cdev[1]->handler = lcs_irq;
 card->gdev = ccwgdev;
 INIT_WORK(&card->kernel_thread_starter, lcs_start_kernel_thread);
 card->thread_start_mask = 0;
 card->thread_allowed_mask = 0;
 card->thread_running_mask = 0;
        return 0;
}
