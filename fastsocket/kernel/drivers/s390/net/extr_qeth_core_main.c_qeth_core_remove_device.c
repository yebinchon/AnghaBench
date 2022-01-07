
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* ccwgdriver; } ;
struct TYPE_5__ {scalar_t__ type; } ;
struct qeth_card {int list; TYPE_3__ discipline; TYPE_1__ info; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_8__ {int rwlock; } ;
struct TYPE_6__ {int (* remove ) (struct ccwgroup_device*) ;} ;


 scalar_t__ QETH_CARD_TYPE_OSN ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int SETUP ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int dev_set_drvdata (int *,int *) ;
 int list_del (int *) ;
 int put_device (int *) ;
 TYPE_4__ qeth_core_card_list ;
 int qeth_core_free_card (struct qeth_card*) ;
 int qeth_core_free_discipline (struct qeth_card*) ;
 int qeth_core_remove_device_attributes (int *) ;
 int qeth_core_remove_osn_attributes (int *) ;
 int stub1 (struct ccwgroup_device*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void qeth_core_remove_device(struct ccwgroup_device *gdev)
{
 unsigned long flags;
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);

 QETH_DBF_TEXT(SETUP, 2, "removedv");

 if (card->info.type == QETH_CARD_TYPE_OSN) {
  qeth_core_remove_osn_attributes(&gdev->dev);
 } else {
  qeth_core_remove_device_attributes(&gdev->dev);
 }

 if (card->discipline.ccwgdriver) {
  card->discipline.ccwgdriver->remove(gdev);
  qeth_core_free_discipline(card);
 }

 write_lock_irqsave(&qeth_core_card_list.rwlock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&qeth_core_card_list.rwlock, flags);
 qeth_core_free_card(card);
 dev_set_drvdata(&gdev->dev, ((void*)0));
 put_device(&gdev->dev);
 return;
}
