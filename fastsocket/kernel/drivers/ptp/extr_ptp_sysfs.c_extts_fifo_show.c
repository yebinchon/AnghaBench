
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timestamp_event_queue {size_t head; int lock; struct ptp_extts_event* buf; } ;
struct TYPE_2__ {int nsec; int sec; } ;
struct ptp_extts_event {int index; TYPE_1__ t; } ;
struct ptp_clock {int tsevq_mux; struct timestamp_event_queue tsevq; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int event ;


 int ERESTARTSYS ;
 int PAGE_SIZE ;
 int PTP_MAX_TIMESTAMPS ;
 struct ptp_clock* dev_get_drvdata (struct device*) ;
 int memset (struct ptp_extts_event*,int ,int) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 size_t queue_cnt (struct timestamp_event_queue*) ;
 int snprintf (char*,int ,char*,int,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t extts_fifo_show(struct device *dev,
          struct device_attribute *attr, char *page)
{
 struct ptp_clock *ptp = dev_get_drvdata(dev);
 struct timestamp_event_queue *queue = &ptp->tsevq;
 struct ptp_extts_event event;
 unsigned long flags;
 size_t qcnt;
 int cnt = 0;

 memset(&event, 0, sizeof(event));

 if (mutex_lock_interruptible(&ptp->tsevq_mux))
  return -ERESTARTSYS;

 spin_lock_irqsave(&queue->lock, flags);
 qcnt = queue_cnt(queue);
 if (qcnt) {
  event = queue->buf[queue->head];
  queue->head = (queue->head + 1) % PTP_MAX_TIMESTAMPS;
 }
 spin_unlock_irqrestore(&queue->lock, flags);

 if (!qcnt)
  goto out;

 cnt = snprintf(page, PAGE_SIZE, "%u %lld %u\n",
         event.index, event.t.sec, event.t.nsec);
out:
 mutex_unlock(&ptp->tsevq_mux);
 return cnt;
}
