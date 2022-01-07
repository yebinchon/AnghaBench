
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int txstatus_timer; int flags; } ;


 int HRTIMER_MODE_REL ;
 int TX_STATUS_READING ;
 int hrtimer_start (int *,int ,int ) ;
 int ktime_set (int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void rt2800usb_async_read_tx_status(struct rt2x00_dev *rt2x00dev)
{

 if (test_and_set_bit(TX_STATUS_READING, &rt2x00dev->flags))
  return;


 hrtimer_start(&rt2x00dev->txstatus_timer, ktime_set(0, 500000),
        HRTIMER_MODE_REL);
}
