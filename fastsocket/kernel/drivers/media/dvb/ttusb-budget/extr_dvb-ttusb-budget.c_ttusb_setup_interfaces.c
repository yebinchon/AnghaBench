
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttusb {int dev; int isoc_in_pipe; int bulk_in_pipe; int bulk_out_pipe; } ;


 int usb_rcvbulkpipe (int ,int) ;
 int usb_rcvisocpipe (int ,int) ;
 int usb_set_interface (int ,int,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int ttusb_setup_interfaces(struct ttusb *ttusb)
{
 usb_set_interface(ttusb->dev, 1, 1);

 ttusb->bulk_out_pipe = usb_sndbulkpipe(ttusb->dev, 1);
 ttusb->bulk_in_pipe = usb_rcvbulkpipe(ttusb->dev, 1);
 ttusb->isoc_in_pipe = usb_rcvisocpipe(ttusb->dev, 2);

 return 0;
}
