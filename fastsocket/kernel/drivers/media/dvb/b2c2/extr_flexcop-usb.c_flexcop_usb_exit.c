
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flexcop_usb {int uintf; } ;


 int usb_set_intfdata (int ,int *) ;

__attribute__((used)) static void flexcop_usb_exit(struct flexcop_usb *fc_usb)
{
 usb_set_intfdata(fc_usb->uintf, ((void*)0));
}
