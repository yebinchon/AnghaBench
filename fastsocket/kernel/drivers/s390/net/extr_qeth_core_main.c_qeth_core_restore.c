
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ccwgdriver; } ;
struct qeth_card {TYPE_2__ discipline; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_3__ {int (* restore ) (struct ccwgroup_device*) ;} ;


 struct qeth_card* dev_get_drvdata (int *) ;
 int stub1 (struct ccwgroup_device*) ;

__attribute__((used)) static int qeth_core_restore(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 if (card->discipline.ccwgdriver &&
     card->discipline.ccwgdriver->restore)
  return card->discipline.ccwgdriver->restore(gdev);
 return 0;
}
