
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qeth_card {int * dev; int wait_q; } ;
struct ccwgroup_device {scalar_t__ state; int dev; } ;


 scalar_t__ CCWGROUP_ONLINE ;
 struct qeth_card* dev_get_drvdata (int *) ;
 int qeth_l2_set_offline (struct ccwgroup_device*) ;
 int qeth_set_allowed_threads (struct qeth_card*,int ,int) ;
 scalar_t__ qeth_threads_running (struct qeth_card*,int) ;
 int unregister_netdev (int *) ;
 int wait_event (int ,int) ;

__attribute__((used)) static void qeth_l2_remove_device(struct ccwgroup_device *cgdev)
{
 struct qeth_card *card = dev_get_drvdata(&cgdev->dev);

 qeth_set_allowed_threads(card, 0, 1);
 wait_event(card->wait_q, qeth_threads_running(card, 0xffffffff) == 0);

 if (cgdev->state == CCWGROUP_ONLINE)
  qeth_l2_set_offline(cgdev);

 if (card->dev) {
  unregister_netdev(card->dev);
  card->dev = ((void*)0);
 }
 return;
}
