
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int low_latency; struct hso_serial* driver_data; int index; } ;
struct hso_serial {scalar_t__ magic; int open_count; TYPE_1__* parent; int retry_unthrottle_workqueue; int unthrottle_tasklet; int rx_state; int serial_lock; int tty; int minor; } ;
struct file {int dummy; } ;
struct TYPE_3__ {int mutex; int interface; int ref; } ;


 int D1 (char*,...) ;
 int ENODEV ;
 int GFP_KERNEL ;
 scalar_t__ HSO_SERIAL_MAGIC ;
 int INIT_WORK (int *,int ) ;
 int RX_IDLE ;
 int TIOCM_DTR ;
 int TIOCM_RTS ;
 int WARN_ON (int) ;
 int _hso_serial_set_termios (struct tty_struct*,int *) ;
 struct hso_serial* get_serial_by_index (int ) ;
 int hso_serial_ref_free ;
 int hso_serial_tiocmset (struct tty_struct*,int *,int,int ) ;
 int hso_start_serial_device (TYPE_1__*,int ) ;
 int hso_stop_serial_device (TYPE_1__*) ;
 scalar_t__ hso_unthrottle_tasklet ;
 int hso_unthrottle_workfunc ;
 int kref_get (int *) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;
 int tty_kref_get (struct tty_struct*) ;
 int tty_kref_put (int ) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int hso_serial_open(struct tty_struct *tty, struct file *filp)
{
 struct hso_serial *serial = get_serial_by_index(tty->index);
 int result;


 if (serial == ((void*)0) || serial->magic != HSO_SERIAL_MAGIC) {
  WARN_ON(1);
  tty->driver_data = ((void*)0);
  D1("Failed to open port");
  return -ENODEV;
 }

 mutex_lock(&serial->parent->mutex);
 result = usb_autopm_get_interface(serial->parent->interface);
 if (result < 0)
  goto err_out;

 D1("Opening %d", serial->minor);
 kref_get(&serial->parent->ref);


 spin_lock_irq(&serial->serial_lock);
 tty->driver_data = serial;
 tty_kref_put(serial->tty);
 serial->tty = tty_kref_get(tty);
 spin_unlock_irq(&serial->serial_lock);


 serial->open_count++;
 if (serial->open_count == 1) {
  tty->low_latency = 1;
  serial->rx_state = RX_IDLE;

  _hso_serial_set_termios(tty, ((void*)0));
  tasklet_init(&serial->unthrottle_tasklet,
        (void (*)(unsigned long))hso_unthrottle_tasklet,
        (unsigned long)serial);
  INIT_WORK(&serial->retry_unthrottle_workqueue,
     hso_unthrottle_workfunc);
  result = hso_start_serial_device(serial->parent, GFP_KERNEL);
  if (result) {
   hso_stop_serial_device(serial->parent);
   serial->open_count--;
   kref_put(&serial->parent->ref, hso_serial_ref_free);
  }
 } else {
  D1("Port was already open");
 }

 usb_autopm_put_interface(serial->parent->interface);


 if (result)
  hso_serial_tiocmset(tty, ((void*)0), TIOCM_RTS | TIOCM_DTR, 0);
err_out:
 mutex_unlock(&serial->parent->mutex);
 return result;
}
