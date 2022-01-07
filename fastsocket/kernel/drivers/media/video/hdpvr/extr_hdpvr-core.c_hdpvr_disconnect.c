
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct hdpvr_device {int video_dev; int i2c_adapter; int io_mutex; int workqueue; int v4l2_dev; int wait_buffer; int wait_data; int status; } ;


 int STATUS_DISCONNECTED ;
 int atomic_dec (int *) ;
 int dev_nr ;
 int flush_workqueue (int ) ;
 int hdpvr_cancel_queue (struct hdpvr_device*) ;
 int i2c_del_adapter (int *) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct hdpvr_device* to_hdpvr_dev (int ) ;
 int usb_get_intfdata (struct usb_interface*) ;
 int v4l2_device_disconnect (int *) ;
 int v4l2_info (int *,char*,int ) ;
 int video_device_node_name (int ) ;
 int video_unregister_device (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void hdpvr_disconnect(struct usb_interface *interface)
{
 struct hdpvr_device *dev = to_hdpvr_dev(usb_get_intfdata(interface));

 v4l2_info(&dev->v4l2_dev, "device %s disconnected\n",
    video_device_node_name(dev->video_dev));

 mutex_lock(&dev->io_mutex);
 dev->status = STATUS_DISCONNECTED;
 wake_up_interruptible(&dev->wait_data);
 wake_up_interruptible(&dev->wait_buffer);
 mutex_unlock(&dev->io_mutex);
 v4l2_device_disconnect(&dev->v4l2_dev);
 msleep(100);
 flush_workqueue(dev->workqueue);
 mutex_lock(&dev->io_mutex);
 hdpvr_cancel_queue(dev);
 mutex_unlock(&dev->io_mutex);



 video_unregister_device(dev->video_dev);
 atomic_dec(&dev_nr);
}
