
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct qeth_card {TYPE_1__* gdev; } ;
struct TYPE_3__ {int dev; } ;


 int QETH_DBF_HEX (int ,int,struct qeth_card**,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_RECOVER_THREAD ;
 int TRACE ;
 int __qeth_l2_set_offline (TYPE_1__*,int) ;
 int __qeth_l2_set_online (TYPE_1__*,int) ;
 int dev_info (int *,char*) ;
 int dev_warn (int *,char*) ;
 int qeth_clear_recovery_task (struct qeth_card*) ;
 int qeth_clear_thread_running_bit (struct qeth_card*,int ) ;
 int qeth_clear_thread_start_bit (struct qeth_card*,int ) ;
 int qeth_close_dev (struct qeth_card*) ;
 int qeth_do_run_thread (struct qeth_card*,int ) ;
 int qeth_set_recovery_task (struct qeth_card*) ;

__attribute__((used)) static int qeth_l2_recover(void *ptr)
{
 struct qeth_card *card;
 int rc = 0;

 card = (struct qeth_card *) ptr;
 QETH_DBF_TEXT(TRACE, 2, "recover1");
 QETH_DBF_HEX(TRACE, 2, &card, sizeof(void *));
 if (!qeth_do_run_thread(card, QETH_RECOVER_THREAD))
  return 0;
 QETH_DBF_TEXT(TRACE, 2, "recover2");
 dev_warn(&card->gdev->dev,
  "A recovery process has been started for the device\n");
 qeth_set_recovery_task(card);
 __qeth_l2_set_offline(card->gdev, 1);
 rc = __qeth_l2_set_online(card->gdev, 1);
 if (!rc)
  dev_info(&card->gdev->dev,
   "Device successfully recovered!\n");
 else {
  qeth_close_dev(card);
  dev_warn(&card->gdev->dev, "The qeth device driver "
   "failed to recover an error on the device\n");
 }
 qeth_clear_recovery_task(card);
 qeth_clear_thread_start_bit(card, QETH_RECOVER_THREAD);
 qeth_clear_thread_running_bit(card, QETH_RECOVER_THREAD);
 return 0;
}
