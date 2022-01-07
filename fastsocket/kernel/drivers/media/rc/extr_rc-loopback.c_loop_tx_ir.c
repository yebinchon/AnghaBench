
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct rc_dev {struct loopback_dev* priv; } ;
struct loopback_dev {scalar_t__ txcarrier; scalar_t__ rxcarriermin; scalar_t__ rxcarriermax; int txmask; scalar_t__ learning; } ;
struct TYPE_4__ {int pulse; int duration; } ;


 int DEFINE_IR_RAW_EVENT (TYPE_1__) ;
 int EINVAL ;
 int RXMASK_LEARNING ;
 int RXMASK_REGULAR ;
 int TASK_INTERRUPTIBLE ;
 int abs (int) ;
 int dprintk (char*) ;
 int ir_raw_event_handle (struct rc_dev*) ;
 int ir_raw_event_store_with_filter (struct rc_dev*,TYPE_1__*) ;
 TYPE_1__ rawir ;
 int schedule_timeout (int ) ;
 int set_current_state (int ) ;
 int usecs_to_jiffies (unsigned int) ;

__attribute__((used)) static int loop_tx_ir(struct rc_dev *dev, int *txbuf, u32 n)
{
 struct loopback_dev *lodev = dev->priv;
 u32 rxmask;
 unsigned count;
 unsigned total_duration = 0;
 unsigned i;
 DEFINE_IR_RAW_EVENT(rawir);

 if (n == 0 || n % sizeof(int)) {
  dprintk("invalid tx buffer size\n");
  return -EINVAL;
 }

 count = n / sizeof(int);
 for (i = 0; i < count; i++)
  total_duration += abs(txbuf[i]);

 if (total_duration == 0) {
  dprintk("invalid tx data, total duration zero\n");
  return -EINVAL;
 }

 if (lodev->txcarrier < lodev->rxcarriermin ||
     lodev->txcarrier > lodev->rxcarriermax) {
  dprintk("ignoring tx, carrier out of range\n");
  goto out;
 }

 if (lodev->learning)
  rxmask = RXMASK_LEARNING;
 else
  rxmask = RXMASK_REGULAR;

 if (!(rxmask & lodev->txmask)) {
  dprintk("ignoring tx, rx mask mismatch\n");
  goto out;
 }

 for (i = 0; i < count; i++) {
  rawir.pulse = i % 2 ? 0 : 1;
  rawir.duration = abs(txbuf[i]) * 1000;
  if (rawir.duration)
   ir_raw_event_store_with_filter(dev, &rawir);
 }
 ir_raw_event_handle(dev);

out:

 set_current_state(TASK_INTERRUPTIBLE);
 schedule_timeout(usecs_to_jiffies(total_duration));
 return n;
}
