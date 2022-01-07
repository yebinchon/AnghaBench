
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int private_data; } ;
typedef TYPE_1__* pdabusb_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ opened; int remove_ok; TYPE_2__* usbdev; int remove_pending; int mutex; } ;


 int _DABUSB_IF ;
 int dabusb_free_buffers (TYPE_1__*) ;
 int dabusb_stop (TYPE_1__*) ;
 int dbg (char*) ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ usb_set_interface (TYPE_2__*,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static int dabusb_release (struct inode *inode, struct file *file)
{
 pdabusb_t s = (pdabusb_t) file->private_data;

 dbg("dabusb_release");

 mutex_lock(&s->mutex);
 dabusb_stop (s);
 dabusb_free_buffers (s);
 mutex_unlock(&s->mutex);

 if (!s->remove_pending) {
  if (usb_set_interface (s->usbdev, _DABUSB_IF, 0) < 0)
   dev_err(&s->usbdev->dev, "set_interface failed\n");
 }
 else
  wake_up (&s->remove_ok);

 s->opened = 0;
 return 0;
}
