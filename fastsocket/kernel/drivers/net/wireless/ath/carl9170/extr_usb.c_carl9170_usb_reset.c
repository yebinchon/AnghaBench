
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int intf; } ;


 int carl9170_usb_cancel_urbs (struct ar9170*) ;
 int carl9170_usb_stop (struct ar9170*) ;
 int usb_queue_reset_device (int ) ;

void carl9170_usb_reset(struct ar9170 *ar)
{
 carl9170_usb_cancel_urbs(ar);

 carl9170_usb_stop(ar);

 usb_queue_reset_device(ar->intf);
}
