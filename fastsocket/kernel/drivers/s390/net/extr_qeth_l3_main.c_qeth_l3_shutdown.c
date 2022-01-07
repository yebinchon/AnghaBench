
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwtrap; } ;
struct qeth_card {TYPE_1__ info; } ;
struct ccwgroup_device {scalar_t__ state; int dev; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 int QETH_DIAGS_TRAP_DISARM ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int qeth_clear_qdio_buffers (struct qeth_card*) ;
 int qeth_hw_trap (struct qeth_card*,int ) ;
 int qeth_qdio_clear_card (struct qeth_card*,int ) ;
 int qeth_set_allowed_threads (struct qeth_card*,int ,int) ;

__attribute__((used)) static void qeth_l3_shutdown(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);
 qeth_set_allowed_threads(card, 0, 1);
 if ((gdev->state == CCWGROUP_ONLINE) && card->info.hwtrap)
  qeth_hw_trap(card, QETH_DIAGS_TRAP_DISARM);
 qeth_qdio_clear_card(card, 0);
 qeth_clear_qdio_buffers(card);
}
