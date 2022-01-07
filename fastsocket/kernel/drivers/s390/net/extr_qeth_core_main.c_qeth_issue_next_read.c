
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qeth_cmd_buffer {int data; } ;
struct TYPE_5__ {scalar_t__ state; int irq_pending; int ccw; int ccwdev; } ;
struct qeth_card {int read_or_write_problem; int wait_q; TYPE_2__ read; TYPE_1__* gdev; } ;
typedef int addr_t ;
struct TYPE_4__ {int dev; } ;


 scalar_t__ CH_STATE_UP ;
 int EIO ;
 int ENOMEM ;
 int QETH_BUFSIZE ;
 int QETH_DBF_MESSAGE (int,char*,int ,...) ;
 int QETH_DBF_TEXT (int ,int,char*) ;
 int TRACE ;
 int atomic_set (int *,int ) ;
 int ccw_device_start (int ,int *,int ,int ,int ) ;
 int dev_name (int *) ;
 int dev_warn (int *,char*) ;
 struct qeth_cmd_buffer* qeth_get_buffer (TYPE_2__*) ;
 int qeth_schedule_recovery (struct qeth_card*) ;
 int qeth_setup_ccw (TYPE_2__*,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int qeth_issue_next_read(struct qeth_card *card)
{
 int rc;
 struct qeth_cmd_buffer *iob;

 QETH_DBF_TEXT(TRACE, 5, "issnxrd");
 if (card->read.state != CH_STATE_UP)
  return -EIO;
 iob = qeth_get_buffer(&card->read);
 if (!iob) {
  dev_warn(&card->gdev->dev, "The qeth device driver "
   "failed to recover an error on the device\n");
  QETH_DBF_MESSAGE(2, "%s issue_next_read failed: no iob "
   "available\n", dev_name(&card->gdev->dev));
  return -ENOMEM;
 }
 qeth_setup_ccw(&card->read, iob->data, QETH_BUFSIZE);
 QETH_DBF_TEXT(TRACE, 6, "noirqpnd");
 rc = ccw_device_start(card->read.ccwdev, &card->read.ccw,
         (addr_t) iob, 0, 0);
 if (rc) {
  QETH_DBF_MESSAGE(2, "%s error in starting next read ccw! "
   "rc=%i\n", dev_name(&card->gdev->dev), rc);
  atomic_set(&card->read.irq_pending, 0);
  card->read_or_write_problem = 1;
  qeth_schedule_recovery(card);
  wake_up(&card->wait_q);
 }
 return rc;
}
