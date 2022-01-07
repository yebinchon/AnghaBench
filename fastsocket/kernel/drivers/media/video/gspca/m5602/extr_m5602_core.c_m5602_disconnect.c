
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct sd {TYPE_1__* sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int (* disconnect ) (struct sd*) ;} ;


 int gspca_disconnect (struct usb_interface*) ;
 int stub1 (struct sd*) ;
 struct gspca_dev* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static void m5602_disconnect(struct usb_interface *intf)
{
 struct gspca_dev *gspca_dev = usb_get_intfdata(intf);
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor->disconnect)
  sd->sensor->disconnect(sd);

 gspca_disconnect(intf);
}
