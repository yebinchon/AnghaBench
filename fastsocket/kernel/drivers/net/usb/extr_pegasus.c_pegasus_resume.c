
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct pegasus {int carrier_check; TYPE_2__* intr_urb; TYPE_1__* rx_urb; int net; } ;
struct TYPE_4__ {scalar_t__ actual_length; scalar_t__ status; } ;
struct TYPE_3__ {scalar_t__ actual_length; scalar_t__ status; } ;


 int CARRIER_CHECK_DELAY ;
 int intr_callback (TYPE_2__*) ;
 int netif_device_attach (int ) ;
 scalar_t__ netif_running (int ) ;
 int pegasus_workqueue ;
 int queue_delayed_work (int ,int *,int ) ;
 int read_bulk_callback (TYPE_1__*) ;
 struct pegasus* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int pegasus_resume (struct usb_interface *intf)
{
 struct pegasus *pegasus = usb_get_intfdata(intf);

 netif_device_attach (pegasus->net);
 if (netif_running(pegasus->net)) {
  pegasus->rx_urb->status = 0;
  pegasus->rx_urb->actual_length = 0;
  read_bulk_callback(pegasus->rx_urb);

  pegasus->intr_urb->status = 0;
  pegasus->intr_urb->actual_length = 0;
  intr_callback(pegasus->intr_urb);
 }
 queue_delayed_work(pegasus_workqueue, &pegasus->carrier_check,
    CARRIER_CHECK_DELAY);
 return 0;
}
