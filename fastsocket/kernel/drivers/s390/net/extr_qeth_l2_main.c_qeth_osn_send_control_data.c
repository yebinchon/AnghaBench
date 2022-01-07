
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qeth_cmd_buffer {int channel; } ;
struct TYPE_2__ {int irq_pending; int ccwdev; int ccw; } ;
struct qeth_card {int wait_q; TYPE_1__ write; } ;
typedef int addr_t ;


 int QETH_DBF_MESSAGE (int,char*,int) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int QETH_DBF_TEXT_ (int ,int,char*,int) ;
 int TRACE ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int atomic_set (int *,int ) ;
 int ccw_device_start (int ,int *,int ,int ,int ) ;
 int get_ccwdev_lock (int ) ;
 int qeth_prepare_control_data (struct qeth_card*,int,struct qeth_cmd_buffer*) ;
 int qeth_release_buffer (int ,struct qeth_cmd_buffer*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_event (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int qeth_osn_send_control_data(struct qeth_card *card, int len,
      struct qeth_cmd_buffer *iob)
{
 unsigned long flags;
 int rc = 0;

 QETH_DBF_TEXT(TRACE, 5, "osndctrd");

 wait_event(card->wait_q,
     atomic_cmpxchg(&card->write.irq_pending, 0, 1) == 0);
 qeth_prepare_control_data(card, len, iob);
 QETH_DBF_TEXT(TRACE, 6, "osnoirqp");
 spin_lock_irqsave(get_ccwdev_lock(card->write.ccwdev), flags);
 rc = ccw_device_start(card->write.ccwdev, &card->write.ccw,
         (addr_t) iob, 0, 0);
 spin_unlock_irqrestore(get_ccwdev_lock(card->write.ccwdev), flags);
 if (rc) {
  QETH_DBF_MESSAGE(2, "qeth_osn_send_control_data: "
      "ccw_device_start rc = %i\n", rc);
  QETH_DBF_TEXT_(TRACE, 2, " err%d", rc);
  qeth_release_buffer(iob->channel, iob);
  atomic_set(&card->write.irq_pending, 0);
  wake_up(&card->wait_q);
 }
 return rc;
}
