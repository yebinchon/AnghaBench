
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct if_usb_card {TYPE_2__* udev; TYPE_1__* tx_urb; int ep_out; scalar_t__ surprise_removed; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int transfer_flags; } ;


 int GFP_ATOMIC ;
 int URB_ZERO_PACKET ;
 int if_usb_write_bulk_callback ;
 int lbs_deb_usb2 (int *,char*) ;
 int lbs_deb_usbd (int *,char*,...) ;
 int usb_fill_bulk_urb (TYPE_1__*,TYPE_2__*,int ,int *,int ,int ,struct if_usb_card*) ;
 int usb_sndbulkpipe (TYPE_2__*,int ) ;
 int usb_submit_urb (TYPE_1__*,int ) ;

__attribute__((used)) static int usb_tx_block(struct if_usb_card *cardp, uint8_t *payload, uint16_t nb)
{
 int ret = -1;


 if (cardp->surprise_removed) {
  lbs_deb_usbd(&cardp->udev->dev, "Device removed\n");
  goto tx_ret;
 }

 usb_fill_bulk_urb(cardp->tx_urb, cardp->udev,
     usb_sndbulkpipe(cardp->udev,
       cardp->ep_out),
     payload, nb, if_usb_write_bulk_callback, cardp);

 cardp->tx_urb->transfer_flags |= URB_ZERO_PACKET;

 if ((ret = usb_submit_urb(cardp->tx_urb, GFP_ATOMIC))) {
  lbs_deb_usbd(&cardp->udev->dev, "usb_submit_urb failed: %d\n", ret);
  ret = -1;
 } else {
  lbs_deb_usb2(&cardp->udev->dev, "usb_submit_urb success\n");
  ret = 0;
 }

tx_ret:
 return ret;
}
