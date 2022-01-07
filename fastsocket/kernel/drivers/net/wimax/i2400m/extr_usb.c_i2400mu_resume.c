
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct usb_interface {struct device dev; } ;
struct i2400m {scalar_t__ updown; } ;
struct i2400mu {struct i2400m i2400m; } ;


 int d_fnend (int,struct device*,char*,struct usb_interface*,int) ;
 int d_fnstart (int,struct device*,char*,struct usb_interface*) ;
 int d_printf (int,struct device*,char*) ;
 int i2400mu_notification_setup (struct i2400mu*) ;
 struct i2400mu* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static
int i2400mu_resume(struct usb_interface *iface)
{
 int ret = 0;
 struct device *dev = &iface->dev;
 struct i2400mu *i2400mu = usb_get_intfdata(iface);
 struct i2400m *i2400m = &i2400mu->i2400m;

 d_fnstart(3, dev, "(iface %p)\n", iface);
 if (i2400m->updown == 0) {
  d_printf(1, dev, "fw was down, no resume neeed\n");
  goto out;
 }
 d_printf(1, dev, "fw was up, resuming\n");
 i2400mu_notification_setup(i2400mu);



out:
 d_fnend(3, dev, "(iface %p) = %d\n", iface, ret);
 return ret;
}
