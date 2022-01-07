
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {scalar_t__ users; int disconnect_lock; int intf; int read_queue; struct si470x_device* buffer; struct si470x_device* int_in_buffer; int videodev; scalar_t__ disconnected; scalar_t__ int_in_urb; scalar_t__ int_in_running; } ;
struct file {int dummy; } ;


 int ENODEV ;
 int kfree (struct si470x_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si470x_stop (struct si470x_device*) ;
 int usb_autopm_put_interface (int ) ;
 int usb_kill_urb (scalar_t__) ;
 struct si470x_device* video_drvdata (struct file*) ;
 int video_unregister_device (int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int si470x_fops_release(struct file *file)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval = 0;


 if (!radio) {
  retval = -ENODEV;
  goto done;
 }

 mutex_lock(&radio->disconnect_lock);
 radio->users--;
 if (radio->users == 0) {

  if (radio->int_in_running) {
   radio->int_in_running = 0;
  if (radio->int_in_urb)
   usb_kill_urb(radio->int_in_urb);
  }

  if (radio->disconnected) {
   video_unregister_device(radio->videodev);
   kfree(radio->int_in_buffer);
   kfree(radio->buffer);
   kfree(radio);
   goto unlock;
  }


  wake_up_interruptible(&radio->read_queue);


  retval = si470x_stop(radio);
  usb_autopm_put_interface(radio->intf);
 }
unlock:
 mutex_unlock(&radio->disconnect_lock);
done:
 return retval;
}
