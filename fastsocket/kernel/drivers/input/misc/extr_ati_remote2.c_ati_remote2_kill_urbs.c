
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ati_remote2 {int * urb; } ;


 int usb_kill_urb (int ) ;

__attribute__((used)) static void ati_remote2_kill_urbs(struct ati_remote2 *ar2)
{
 usb_kill_urb(ar2->urb[1]);
 usb_kill_urb(ar2->urb[0]);
}
