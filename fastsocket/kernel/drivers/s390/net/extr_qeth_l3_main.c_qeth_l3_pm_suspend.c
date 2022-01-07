
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hwtrap; } ;
struct qeth_card {scalar_t__ state; int gdev; TYPE_1__ info; int wait_q; scalar_t__ dev; } ;
struct ccwgroup_device {scalar_t__ state; int dev; } ;


 scalar_t__ CARD_STATE_UP ;
 scalar_t__ CCWGROUP_OFFLINE ;
 int QETH_DIAGS_TRAP_DISARM ;
 int __qeth_l3_set_offline (int ,int) ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int netif_device_detach (scalar_t__) ;
 int qeth_hw_trap (struct qeth_card*,int ) ;
 int qeth_set_allowed_threads (struct qeth_card*,int ,int) ;
 scalar_t__ qeth_threads_running (struct qeth_card*,int) ;
 int wait_event (int ,int) ;

__attribute__((used)) static int qeth_l3_pm_suspend(struct ccwgroup_device *gdev)
{
 struct qeth_card *card = dev_get_drvdata(&gdev->dev);

 if (card->dev)
  netif_device_detach(card->dev);
 qeth_set_allowed_threads(card, 0, 1);
 wait_event(card->wait_q, qeth_threads_running(card, 0xffffffff) == 0);
 if (gdev->state == CCWGROUP_OFFLINE)
  return 0;
 if (card->state == CARD_STATE_UP) {
  if (card->info.hwtrap)
   qeth_hw_trap(card, QETH_DIAGS_TRAP_DISARM);
  __qeth_l3_set_offline(card->gdev, 1);
 } else
  __qeth_l3_set_offline(card->gdev, 0);
 return 0;
}
