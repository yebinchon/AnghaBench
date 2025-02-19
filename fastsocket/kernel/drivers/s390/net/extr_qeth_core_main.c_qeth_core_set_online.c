
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ccwgdriver; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct qeth_card {TYPE_2__ discipline; int gdev; TYPE_3__ info; } ;
struct ccwgroup_device {int dev; } ;
struct TYPE_4__ {int (* probe ) (int ) ;int (* set_online ) (struct ccwgroup_device*) ;} ;


 scalar_t__ QETH_CARD_TYPE_IQD ;
 int QETH_DISCIPLINE_LAYER2 ;
 int QETH_DISCIPLINE_LAYER3 ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int qeth_core_load_discipline (struct qeth_card*,int) ;
 int stub1 (int ) ;
 int stub2 (struct ccwgroup_device*) ;

__attribute__((used)) static int qeth_core_set_online(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 int rc = 0;
 int def_discipline;

 if (!card->discipline.ccwgdriver) {
  if (card->info.type == QETH_CARD_TYPE_IQD)
   def_discipline = QETH_DISCIPLINE_LAYER3;
  else
   def_discipline = QETH_DISCIPLINE_LAYER2;
  rc = qeth_core_load_discipline(card, def_discipline);
  if (rc)
   goto err;
  rc = card->discipline.ccwgdriver->probe(card->gdev);
  if (rc)
   goto err;
 }
 rc = card->discipline.ccwgdriver->set_online(gdev);
err:
 return rc;
}
