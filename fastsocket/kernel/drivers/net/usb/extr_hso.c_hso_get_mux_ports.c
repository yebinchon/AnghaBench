
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usb_interface {struct usb_host_interface* cur_altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {int extralen; unsigned char* extra; TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct TYPE_4__ {int extralen; unsigned char* extra; } ;



__attribute__((used)) static int hso_get_mux_ports(struct usb_interface *intf, unsigned char *ports)
{
 int i;
 struct usb_host_interface *iface = intf->cur_altsetting;

 if (iface->extralen == 3) {
  *ports = iface->extra[2];
  return 0;
 }

 for (i = 0; i < iface->desc.bNumEndpoints; i++) {
  if (iface->endpoint[i].extralen == 3) {
   *ports = iface->endpoint[i].extra[2];
   return 0;
  }
 }

 return -1;
}
