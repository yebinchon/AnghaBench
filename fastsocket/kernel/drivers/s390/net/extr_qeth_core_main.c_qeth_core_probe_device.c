
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int type; } ;
struct TYPE_14__ {TYPE_5__* ccwgdriver; } ;
struct TYPE_11__ {TYPE_4__* ccwdev; } ;
struct TYPE_10__ {TYPE_4__* ccwdev; } ;
struct TYPE_9__ {TYPE_4__* ccwdev; } ;
struct qeth_card {TYPE_7__ info; int list; struct ccwgroup_device* gdev; TYPE_6__ discipline; TYPE_3__ data; TYPE_2__ write; TYPE_1__ read; } ;
struct device {int dummy; } ;
struct ccwgroup_device {TYPE_4__** cdev; struct device dev; } ;
struct TYPE_16__ {int rwlock; int list; } ;
struct TYPE_13__ {int (* probe ) (struct ccwgroup_device*) ;} ;
struct TYPE_12__ {void* handler; } ;


 int ENODEV ;
 int ENOMEM ;




 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int QETH_DISCIPLINE_LAYER2 ;
 int SETUP ;
 int dev_name (struct device*) ;
 int dev_set_drvdata (struct device*,struct qeth_card*) ;
 int get_device (struct device*) ;
 int list_add_tail (int *,int *) ;
 int put_device (struct device*) ;
 struct qeth_card* qeth_alloc_card () ;
 TYPE_8__ qeth_core_card_list ;
 int qeth_core_create_device_attributes (struct device*) ;
 int qeth_core_create_osn_attributes (struct device*) ;
 int qeth_core_free_card (struct qeth_card*) ;
 int qeth_core_free_discipline (struct qeth_card*) ;
 int qeth_core_load_discipline (struct qeth_card*,int ) ;
 int qeth_core_remove_device_attributes (struct device*) ;
 int qeth_core_remove_osn_attributes (struct device*) ;
 int qeth_determine_capabilities (struct qeth_card*) ;
 int qeth_determine_card_type (struct qeth_card*) ;
 void* qeth_irq ;
 int qeth_setup_card (struct qeth_card*) ;
 int stub1 (struct ccwgroup_device*) ;
 int write_lock_irqsave (int *,unsigned long) ;
 int write_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int qeth_core_probe_device(struct ccwgroup_device *gdev)
{
 struct qeth_card *card;
 struct device *dev;
 int rc;
 unsigned long flags;

 QETH_DBF_TEXT(SETUP, 2, "probedev");

 dev = &gdev->dev;
 if (!get_device(dev))
  return -ENODEV;

 QETH_DBF_TEXT_(SETUP, 2, "%s", dev_name(&gdev->dev));

 card = qeth_alloc_card();
 if (!card) {
  QETH_DBF_TEXT_(SETUP, 2, "1err%d", -ENOMEM);
  rc = -ENOMEM;
  goto err_dev;
 }
 card->read.ccwdev = gdev->cdev[0];
 card->write.ccwdev = gdev->cdev[1];
 card->data.ccwdev = gdev->cdev[2];
 dev_set_drvdata(&gdev->dev, card);
 card->gdev = gdev;
 gdev->cdev[0]->handler = qeth_irq;
 gdev->cdev[1]->handler = qeth_irq;
 gdev->cdev[2]->handler = qeth_irq;

 rc = qeth_determine_card_type(card);
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "3err%d", rc);
  goto err_card;
 }
 rc = qeth_setup_card(card);
 if (rc) {
  QETH_DBF_TEXT_(SETUP, 2, "2err%d", rc);
  goto err_card;
 }

 if (card->info.type == 129)
  rc = qeth_core_create_osn_attributes(dev);
 else
  rc = qeth_core_create_device_attributes(dev);
 if (rc)
  goto err_card;
 switch (card->info.type) {
 case 129:
 case 130:
  rc = qeth_core_load_discipline(card, QETH_DISCIPLINE_LAYER2);
  if (rc)
   goto err_attr;
  rc = card->discipline.ccwgdriver->probe(card->gdev);
  if (rc)
   goto err_disc;
 case 131:
 case 128:
 default:
  break;
 }

 write_lock_irqsave(&qeth_core_card_list.rwlock, flags);
 list_add_tail(&card->list, &qeth_core_card_list.list);
 write_unlock_irqrestore(&qeth_core_card_list.rwlock, flags);

 qeth_determine_capabilities(card);
 return 0;

err_disc:
 qeth_core_free_discipline(card);
err_attr:
 if (card->info.type == 129)
  qeth_core_remove_osn_attributes(dev);
 else
  qeth_core_remove_device_attributes(dev);
err_card:
 qeth_core_free_card(card);
err_dev:
 put_device(dev);
 return rc;
}
