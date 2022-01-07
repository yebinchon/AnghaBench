
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int dummy; } ;
struct ccwgroup_device {int dev; } ;


 struct lcs_card* dev_get_drvdata (int *) ;
 int lcs_pm_suspend (struct lcs_card*) ;

__attribute__((used)) static int lcs_freeze(struct ccwgroup_device *gdev)
{
 struct lcs_card *card = dev_get_drvdata(&gdev->dev);
 return lcs_pm_suspend(card);
}
