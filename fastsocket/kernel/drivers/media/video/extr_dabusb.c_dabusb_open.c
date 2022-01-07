
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_flags; TYPE_1__* private_data; scalar_t__ f_pos; } ;
typedef TYPE_1__* pdabusb_t ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int opened; int mutex; TYPE_2__* usbdev; } ;


 int DABUSB_MINOR ;
 int EAGAIN ;
 int EBUSY ;
 int EINVAL ;
 int EIO ;
 int NRDABUSB ;
 int O_NONBLOCK ;
 int _DABUSB_IF ;
 int current ;
 TYPE_1__* dabusb ;
 int dbg (char*) ;
 int dev_err (int *,char*) ;
 int iminor (struct inode*) ;
 int msleep_interruptible (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ usb_set_interface (TYPE_2__*,int ,int) ;

__attribute__((used)) static int dabusb_open (struct inode *inode, struct file *file)
{
 int devnum = iminor(inode);
 pdabusb_t s;

 if (devnum < DABUSB_MINOR || devnum >= (DABUSB_MINOR + NRDABUSB))
  return -EIO;

 s = &dabusb[devnum - DABUSB_MINOR];

 dbg("dabusb_open");
 mutex_lock(&s->mutex);

 while (!s->usbdev || s->opened) {
  mutex_unlock(&s->mutex);

  if (file->f_flags & O_NONBLOCK) {
   return -EBUSY;
  }
  msleep_interruptible(500);

  if (signal_pending (current)) {
   return -EAGAIN;
  }
  mutex_lock(&s->mutex);
 }
 if (usb_set_interface (s->usbdev, _DABUSB_IF, 1) < 0) {
  mutex_unlock(&s->mutex);
  dev_err(&s->usbdev->dev, "set_interface failed\n");
  return -EINVAL;
 }
 s->opened = 1;
 mutex_unlock(&s->mutex);

 file->f_pos = 0;
 file->private_data = s;

 return nonseekable_open(inode, file);
}
