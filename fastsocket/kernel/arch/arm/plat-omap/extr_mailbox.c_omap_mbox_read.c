
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request {scalar_t__ special; } ;
struct omap_mbox {TYPE_1__* rxq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef scalar_t__ mbox_msg_t ;
struct TYPE_2__ {struct request_queue* queue; } ;


 int blk_end_request_all (struct request*,int ) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 struct omap_mbox* dev_get_drvdata (struct device*) ;
 int mbox_seq_test (struct omap_mbox*,scalar_t__) ;
 int pr_debug (char*,char,char,char,char) ;
 int pr_info (char*,scalar_t__) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t
omap_mbox_read(struct device *dev, struct device_attribute *attr, char *buf)
{
 unsigned long flags;
 struct request *rq;
 mbox_msg_t *p = (mbox_msg_t *) buf;
 struct omap_mbox *mbox = dev_get_drvdata(dev);
 struct request_queue *q = mbox->rxq->queue;

 while (1) {
  spin_lock_irqsave(q->queue_lock, flags);
  rq = blk_fetch_request(q);
  spin_unlock_irqrestore(q->queue_lock, flags);

  if (!rq)
   break;

  *p = (mbox_msg_t)rq->special;

  blk_end_request_all(rq, 0);

  if (unlikely(mbox_seq_test(mbox, *p))) {
   pr_info("mbox: Illegal seq bit!(%08x) ignored\n", *p);
   continue;
  }
  p++;
 }

 pr_debug("%02x %02x %02x %02x\n", buf[0], buf[1], buf[2], buf[3]);

 return (size_t) ((char *)p - buf);
}
