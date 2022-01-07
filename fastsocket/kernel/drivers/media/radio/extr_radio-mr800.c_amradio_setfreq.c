
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amradio_device {int* buffer; int lock; int usbdev; scalar_t__ removed; } ;


 int AMRADIO_SET_FREQ ;
 int BUFFER_LENGTH ;
 int EIO ;
 int USB_TIMEOUT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_bulk_msg (int ,int ,void*,int,int*,int ) ;
 int usb_sndintpipe (int ,int) ;

__attribute__((used)) static int amradio_setfreq(struct amradio_device *radio, int freq)
{
 int retval;
 int size;
 unsigned short freq_send = 0x10 + (freq >> 3) / 25;


 if (radio->removed)
  return -EIO;

 mutex_lock(&radio->lock);

 radio->buffer[0] = 0x00;
 radio->buffer[1] = 0x55;
 radio->buffer[2] = 0xaa;
 radio->buffer[3] = 0x03;
 radio->buffer[4] = AMRADIO_SET_FREQ;
 radio->buffer[5] = 0x00;
 radio->buffer[6] = 0x00;
 radio->buffer[7] = 0x08;

 retval = usb_bulk_msg(radio->usbdev, usb_sndintpipe(radio->usbdev, 2),
  (void *) (radio->buffer), BUFFER_LENGTH, &size, USB_TIMEOUT);

 if (retval < 0 || size != BUFFER_LENGTH) {
  mutex_unlock(&radio->lock);
  return retval;
 }


 radio->buffer[0] = (freq_send >> 8) & 0xff;
 radio->buffer[1] = freq_send & 0xff;
 radio->buffer[2] = 0x01;
 radio->buffer[3] = 0x00;
 radio->buffer[4] = 0x00;

 radio->buffer[7] = 0x00;

 retval = usb_bulk_msg(radio->usbdev, usb_sndintpipe(radio->usbdev, 2),
  (void *) (radio->buffer), BUFFER_LENGTH, &size, USB_TIMEOUT);

 if (retval < 0 || size != BUFFER_LENGTH) {
  mutex_unlock(&radio->lock);
  return retval;
 }

 mutex_unlock(&radio->lock);

 return retval;
}
