
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tty_struct {struct hso_serial* driver_data; } ;
struct hso_serial {scalar_t__ open_count; TYPE_1__* parent; int retry_unthrottle_workqueue; int unthrottle_tasklet; int serial_lock; struct tty_struct* tty; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int ref; int mutex; int interface; int usb_gone; } ;


 int D1 (char*) ;
 int cancel_work_sync (int *) ;
 int hso_serial_ref_free ;
 int hso_stop_serial_device (TYPE_1__*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_kill (int *) ;
 int tty_kref_put (struct tty_struct*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static void hso_serial_close(struct tty_struct *tty, struct file *filp)
{
 struct hso_serial *serial = tty->driver_data;
 u8 usb_gone;

 D1("Closing serial port");


 if (serial == ((void*)0))
  return;

 mutex_lock(&serial->parent->mutex);
 usb_gone = serial->parent->usb_gone;

 if (!usb_gone)
  usb_autopm_get_interface(serial->parent->interface);



 serial->open_count--;

 if (serial->open_count <= 0) {
  serial->open_count = 0;
  spin_lock_irq(&serial->serial_lock);
  if (serial->tty == tty) {
   serial->tty->driver_data = ((void*)0);
   serial->tty = ((void*)0);
   tty_kref_put(tty);
  }
  spin_unlock_irq(&serial->serial_lock);
  if (!usb_gone)
   hso_stop_serial_device(serial->parent);
  tasklet_kill(&serial->unthrottle_tasklet);
  cancel_work_sync(&serial->retry_unthrottle_workqueue);
 }

 if (!usb_gone)
  usb_autopm_put_interface(serial->parent->interface);

 mutex_unlock(&serial->parent->mutex);

 kref_put(&serial->parent->ref, hso_serial_ref_free);
}
