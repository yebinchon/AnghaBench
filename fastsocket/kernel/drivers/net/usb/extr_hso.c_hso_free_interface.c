
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct tty_struct {int dummy; } ;
struct rfkill {int dummy; } ;
struct hso_serial {TYPE_1__* parent; int serial_lock; int tty; } ;
struct TYPE_12__ {int net; struct rfkill* rfkill; } ;
struct TYPE_11__ {int async_get_intf; int async_put_intf; struct usb_interface* interface; } ;
struct TYPE_10__ {int ref; struct usb_interface* interface; } ;
struct TYPE_9__ {int usb_gone; int mutex; } ;


 int HSO_MAX_NET_DEVICES ;
 int HSO_SERIAL_TTY_MINORS ;
 int cancel_work_sync (int *) ;
 TYPE_7__* dev2net (TYPE_3__*) ;
 struct hso_serial* dev2ser (TYPE_2__*) ;
 int hso_free_net_device (TYPE_3__*) ;
 int hso_serial_ref_free ;
 int hso_stop_net_device (TYPE_3__*) ;
 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netif_stop_queue (int ) ;
 TYPE_3__** network_table ;
 int rfkill_destroy (struct rfkill*) ;
 int rfkill_unregister (struct rfkill*) ;
 TYPE_2__** serial_table ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tty_hangup (struct tty_struct*) ;
 struct tty_struct* tty_kref_get (int ) ;
 int tty_kref_put (struct tty_struct*) ;

__attribute__((used)) static void hso_free_interface(struct usb_interface *interface)
{
 struct hso_serial *hso_dev;
 struct tty_struct *tty;
 int i;

 for (i = 0; i < HSO_SERIAL_TTY_MINORS; i++) {
  if (serial_table[i]
      && (serial_table[i]->interface == interface)) {
   hso_dev = dev2ser(serial_table[i]);
   spin_lock_irq(&hso_dev->serial_lock);
   tty = tty_kref_get(hso_dev->tty);
   spin_unlock_irq(&hso_dev->serial_lock);
   if (tty)
    tty_hangup(tty);
   mutex_lock(&hso_dev->parent->mutex);
   tty_kref_put(tty);
   hso_dev->parent->usb_gone = 1;
   mutex_unlock(&hso_dev->parent->mutex);
   kref_put(&serial_table[i]->ref, hso_serial_ref_free);
  }
 }

 for (i = 0; i < HSO_MAX_NET_DEVICES; i++) {
  if (network_table[i]
      && (network_table[i]->interface == interface)) {
   struct rfkill *rfk = dev2net(network_table[i])->rfkill;


   netif_stop_queue(dev2net(network_table[i])->net);
   hso_stop_net_device(network_table[i]);
   cancel_work_sync(&network_table[i]->async_put_intf);
   cancel_work_sync(&network_table[i]->async_get_intf);
   if (rfk) {
    rfkill_unregister(rfk);
    rfkill_destroy(rfk);
   }
   hso_free_net_device(network_table[i]);
  }
 }
}
