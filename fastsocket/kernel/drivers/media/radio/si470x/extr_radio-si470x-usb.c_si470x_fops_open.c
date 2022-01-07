
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct si470x_device {int users; int int_in_running; TYPE_2__* intf; int int_in_urb; TYPE_1__* int_in_endpoint; int int_in_buffer; int usbdev; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int bInterval; int wMaxPacketSize; int bEndpointAddress; } ;


 int EIO ;
 int GFP_KERNEL ;
 int dev_info (int *,char*,int) ;
 int le16_to_cpu (int ) ;
 int lock_kernel () ;
 int mb () ;
 int si470x_int_in_callback ;
 int si470x_start (struct si470x_device*) ;
 int unlock_kernel () ;
 int usb_autopm_get_interface (TYPE_2__*) ;
 int usb_autopm_put_interface (TYPE_2__*) ;
 int usb_fill_int_urb (int ,int ,int ,int ,int ,int ,struct si470x_device*,int ) ;
 int usb_rcvintpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_fops_open(struct file *file)
{
 struct si470x_device *radio = video_drvdata(file);
 int retval;

 lock_kernel();
 radio->users++;

 retval = usb_autopm_get_interface(radio->intf);
 if (retval < 0) {
  radio->users--;
  retval = -EIO;
  goto done;
 }

 if (radio->users == 1) {

  retval = si470x_start(radio);
  if (retval < 0) {
   usb_autopm_put_interface(radio->intf);
   goto done;
  }


  usb_fill_int_urb(radio->int_in_urb, radio->usbdev,
   usb_rcvintpipe(radio->usbdev,
   radio->int_in_endpoint->bEndpointAddress),
   radio->int_in_buffer,
   le16_to_cpu(radio->int_in_endpoint->wMaxPacketSize),
   si470x_int_in_callback,
   radio,
   radio->int_in_endpoint->bInterval);

  radio->int_in_running = 1;
  mb();

  retval = usb_submit_urb(radio->int_in_urb, GFP_KERNEL);
  if (retval) {
   dev_info(&radio->intf->dev,
     "submitting int urb failed (%d)\n", retval);
   radio->int_in_running = 0;
   usb_autopm_put_interface(radio->intf);
  }
 }

done:
 unlock_kernel();
 return retval;
}
