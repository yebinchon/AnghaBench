
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct sd {int dummy; } ;


 int D_PROBE ;
 int PDEBUG (int ,char*) ;
 int THIS_MODULE ;
 int gspca_dev_probe (struct usb_interface*,struct usb_device_id const*,int *,int,int ) ;
 int sd_desc ;

__attribute__((used)) static int sd_probe(struct usb_interface *intf,
   const struct usb_device_id *id)
{
 PDEBUG(D_PROBE, "Probing for a stv06xx device");
 return gspca_dev_probe(intf, id, &sd_desc, sizeof(struct sd),
          THIS_MODULE);
}
