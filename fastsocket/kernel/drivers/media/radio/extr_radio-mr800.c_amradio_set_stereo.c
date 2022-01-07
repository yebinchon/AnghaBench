
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amradio_device {int* buffer; int stereo; int lock; int usbdev; scalar_t__ removed; } ;


 int AMRADIO_SET_MONO ;
 int BUFFER_LENGTH ;
 int EIO ;
 int USB_TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_bulk_msg (int ,int ,void*,int,int*,int ) ;
 int usb_sndintpipe (int ,int) ;

__attribute__((used)) static int amradio_set_stereo(struct amradio_device *radio, char argument)
{
 int retval;
 int size;


 if (radio->removed)
  return -EIO;

 mutex_lock(&radio->lock);

 radio->buffer[0] = 0x00;
 radio->buffer[1] = 0x55;
 radio->buffer[2] = 0xaa;
 radio->buffer[3] = 0x00;
 radio->buffer[4] = AMRADIO_SET_MONO;
 radio->buffer[5] = argument;
 radio->buffer[6] = 0x00;
 radio->buffer[7] = 0x00;

 retval = usb_bulk_msg(radio->usbdev, usb_sndintpipe(radio->usbdev, 2),
  (void *) (radio->buffer), BUFFER_LENGTH, &size, USB_TIMEOUT);

 if (retval < 0 || size != BUFFER_LENGTH) {
  radio->stereo = -1;
  mutex_unlock(&radio->lock);
  return retval;
 }

 radio->stereo = 1;

 mutex_unlock(&radio->lock);

 return retval;
}
