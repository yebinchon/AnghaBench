
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {scalar_t__ drv_data; int autowake_tasklet; int rxdone_tasklet; int tbtt_tasklet; int pretbtt_tasklet; int txstatus_tasklet; int txstatus_fifo; scalar_t__ workqueue; int txdone_work; int rxdone_work; int txstatus_timer; int sleep_work; int autowakeup_work; int intf_work; int flags; } ;


 int DEVICE_STATE_PRESENT ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int destroy_workqueue (scalar_t__) ;
 int hrtimer_cancel (int *) ;
 int kfifo_free (int *) ;
 int kfree (scalar_t__) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 int rt2x00debug_deregister (struct rt2x00_dev*) ;
 int rt2x00leds_unregister (struct rt2x00_dev*) ;
 int rt2x00lib_disable_radio (struct rt2x00_dev*) ;
 int rt2x00lib_free_firmware (struct rt2x00_dev*) ;
 int rt2x00lib_remove_hw (struct rt2x00_dev*) ;
 int rt2x00lib_uninitialize (struct rt2x00_dev*) ;
 int rt2x00queue_free (struct rt2x00_dev*) ;
 int tasklet_kill (int *) ;

void rt2x00lib_remove_dev(struct rt2x00_dev *rt2x00dev)
{
 clear_bit(DEVICE_STATE_PRESENT, &rt2x00dev->flags);




 rt2x00lib_disable_radio(rt2x00dev);




 cancel_work_sync(&rt2x00dev->intf_work);
 cancel_delayed_work_sync(&rt2x00dev->autowakeup_work);
 cancel_work_sync(&rt2x00dev->sleep_work);
 if (rt2x00_is_usb(rt2x00dev)) {
  hrtimer_cancel(&rt2x00dev->txstatus_timer);
  cancel_work_sync(&rt2x00dev->rxdone_work);
  cancel_work_sync(&rt2x00dev->txdone_work);
 }
 if (rt2x00dev->workqueue)
  destroy_workqueue(rt2x00dev->workqueue);




 kfifo_free(&rt2x00dev->txstatus_fifo);




 tasklet_kill(&rt2x00dev->txstatus_tasklet);
 tasklet_kill(&rt2x00dev->pretbtt_tasklet);
 tasklet_kill(&rt2x00dev->tbtt_tasklet);
 tasklet_kill(&rt2x00dev->rxdone_tasklet);
 tasklet_kill(&rt2x00dev->autowake_tasklet);




 rt2x00lib_uninitialize(rt2x00dev);




 rt2x00debug_deregister(rt2x00dev);
 rt2x00leds_unregister(rt2x00dev);




 rt2x00lib_remove_hw(rt2x00dev);




 rt2x00lib_free_firmware(rt2x00dev);




 rt2x00queue_free(rt2x00dev);




 if (rt2x00dev->drv_data)
  kfree(rt2x00dev->drv_data);
}
