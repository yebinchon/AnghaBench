
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int dummy; } ;
struct ccwgroup_device {int dev; } ;
struct ccw_device {int dev; } ;


 struct qeth_card* dev_get_drvdata (int *) ;

__attribute__((used)) static inline struct qeth_card *CARD_FROM_CDEV(struct ccw_device *cdev)
{
 struct qeth_card *card = dev_get_drvdata(&((struct ccwgroup_device *)
  dev_get_drvdata(&cdev->dev))->dev);
 return card;
}
