
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; int func; } ;
struct zd_usb_rx {int usb_packet_size; scalar_t__ fragment_length; TYPE_1__ reset_timer_tasklet; int idle_work; int setup_mutex; int lock; } ;
struct zd_usb {int intf; struct zd_usb_rx rx; } ;
struct TYPE_4__ {scalar_t__ speed; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ USB_SPEED_HIGH ;
 int ZD_ASSERT (int) ;
 TYPE_2__* interface_to_usbdev (int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int zd_rx_idle_timer_handler ;
 int zd_usb_reset_rx_idle_timer_tasklet ;

__attribute__((used)) static inline void init_usb_rx(struct zd_usb *usb)
{
 struct zd_usb_rx *rx = &usb->rx;

 spin_lock_init(&rx->lock);
 mutex_init(&rx->setup_mutex);
 if (interface_to_usbdev(usb->intf)->speed == USB_SPEED_HIGH) {
  rx->usb_packet_size = 512;
 } else {
  rx->usb_packet_size = 64;
 }
 ZD_ASSERT(rx->fragment_length == 0);
 INIT_DELAYED_WORK(&rx->idle_work, zd_rx_idle_timer_handler);
 rx->reset_timer_tasklet.func = zd_usb_reset_rx_idle_timer_tasklet;
 rx->reset_timer_tasklet.data = (unsigned long)usb;
}
