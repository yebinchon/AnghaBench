
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct urb {int status; int actual_length; } ;


 int devdbg (struct usbnet*,char*,int ,int ) ;

void rndis_status(struct usbnet *dev, struct urb *urb)
{
 devdbg(dev, "rndis status urb, len %d stat %d",
  urb->actual_length, urb->status);


}
