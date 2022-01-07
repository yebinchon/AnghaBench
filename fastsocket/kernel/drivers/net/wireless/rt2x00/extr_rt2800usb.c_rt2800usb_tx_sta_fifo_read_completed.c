
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int flags; int txstatus_timer; int txdone_work; int workqueue; int txstatus_fifo; } ;


 int HRTIMER_MODE_REL ;
 int TX_STATUS_READING ;
 int TX_STA_FIFO_VALID ;
 int clear_bit (int ,int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int kfifo_put (int *,int *) ;
 int ktime_set (int ,int) ;
 int queue_work (int ,int *) ;
 scalar_t__ rt2800usb_txstatus_pending (struct rt2x00_dev*) ;
 scalar_t__ rt2800usb_txstatus_timeout (struct rt2x00_dev*) ;
 int rt2x00_get_field32 (int ,int ) ;
 int rt2x00_warn (struct rt2x00_dev*,char*,...) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static bool rt2800usb_tx_sta_fifo_read_completed(struct rt2x00_dev *rt2x00dev,
       int urb_status, u32 tx_status)
{
 bool valid;

 if (urb_status) {
  rt2x00_warn(rt2x00dev, "TX status read failed %d\n",
       urb_status);

  goto stop_reading;
 }

 valid = rt2x00_get_field32(tx_status, TX_STA_FIFO_VALID);
 if (valid) {
  if (!kfifo_put(&rt2x00dev->txstatus_fifo, &tx_status))
   rt2x00_warn(rt2x00dev, "TX status FIFO overrun\n");

  queue_work(rt2x00dev->workqueue, &rt2x00dev->txdone_work);


  return 1;
 }


 if (rt2800usb_txstatus_timeout(rt2x00dev))
  queue_work(rt2x00dev->workqueue, &rt2x00dev->txdone_work);

 if (rt2800usb_txstatus_pending(rt2x00dev)) {

  hrtimer_start(&rt2x00dev->txstatus_timer, ktime_set(0, 250000),
         HRTIMER_MODE_REL);
  return 0;
 }

stop_reading:
 clear_bit(TX_STATUS_READING, &rt2x00dev->flags);





 if (rt2800usb_txstatus_pending(rt2x00dev) &&
     !test_and_set_bit(TX_STATUS_READING, &rt2x00dev->flags))
  return 1;
 else
  return 0;
}
