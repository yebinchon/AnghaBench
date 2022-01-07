
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lme2510_state {int * usb_buffer; } ;
struct dvb_usb_device {int usb_mutex; int udev; struct lme2510_state* priv; } ;


 int EAGAIN ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int info (char*) ;
 int * kmalloc (int,int ) ;
 int lme2510_bulk_read (int ,int *,int,int) ;
 int lme2510_bulk_write (int ,int *,int,int) ;
 int memcpy (int *,int *,int) ;
 int msleep (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int usb_clear_halt (int ,int ) ;
 int usb_rcvbulkpipe (int ,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int lme2510_usb_talk(struct dvb_usb_device *d,
  u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
 struct lme2510_state *st = d->priv;
 u8 *buff;
 int ret = 0;

 if (st->usb_buffer == ((void*)0)) {
  st->usb_buffer = kmalloc(512, GFP_KERNEL);
  if (st->usb_buffer == ((void*)0)) {
   info("MEM Error no memory");
   return -ENOMEM;
  }
 }
 buff = st->usb_buffer;


 memcpy(buff, wbuf, (wlen > 512) ? 512 : wlen);

 ret = mutex_lock_interruptible(&d->usb_mutex);

 if (ret < 0)
  return -EAGAIN;

 ret |= usb_clear_halt(d->udev, usb_sndbulkpipe(d->udev, 0x01));

 ret |= lme2510_bulk_write(d->udev, buff, wlen , 0x01);

 msleep(10);

 ret |= usb_clear_halt(d->udev, usb_rcvbulkpipe(d->udev, 0x01));

 ret |= lme2510_bulk_read(d->udev, buff, (rlen > 512) ?
   512 : rlen , 0x01);

 if (rlen > 0)
  memcpy(rbuf, buff, rlen);

 mutex_unlock(&d->usb_mutex);

 return (ret < 0) ? -ENODEV : 0;
}
