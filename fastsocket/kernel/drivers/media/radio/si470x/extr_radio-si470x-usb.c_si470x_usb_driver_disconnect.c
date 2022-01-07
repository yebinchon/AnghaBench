
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct si470x_device {int disconnected; scalar_t__ users; int disconnect_lock; struct si470x_device* buffer; int videodev; struct si470x_device* int_in_buffer; int int_in_urb; } ;


 int BLINK_ORANGE_LED ;
 int kfree (struct si470x_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si470x_set_led_state (struct si470x_device*,int ) ;
 int usb_free_urb (int ) ;
 struct si470x_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void si470x_usb_driver_disconnect(struct usb_interface *intf)
{
 struct si470x_device *radio = usb_get_intfdata(intf);

 mutex_lock(&radio->disconnect_lock);
 radio->disconnected = 1;
 usb_set_intfdata(intf, ((void*)0));
 if (radio->users == 0) {

  si470x_set_led_state(radio, BLINK_ORANGE_LED);


  usb_free_urb(radio->int_in_urb);

  kfree(radio->int_in_buffer);
  video_unregister_device(radio->videodev);
  kfree(radio->buffer);
  kfree(radio);
 }
 mutex_unlock(&radio->disconnect_lock);
}
