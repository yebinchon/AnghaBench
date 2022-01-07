
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int WM831X_UNIQUE_ID_LEN ;
 struct wm831x* dev_get_drvdata (struct device*) ;
 scalar_t__ sprintf (char*,char*,...) ;
 int wm831x_unique_id_read (struct wm831x*,char*) ;

__attribute__((used)) static ssize_t wm831x_unique_id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct wm831x *wm831x = dev_get_drvdata(dev);
 int i, rval;
 char id[WM831X_UNIQUE_ID_LEN];
 ssize_t ret = 0;

 rval = wm831x_unique_id_read(wm831x, id);
 if (rval < 0)
  return 0;

 for (i = 0; i < WM831X_UNIQUE_ID_LEN; i++)
  ret += sprintf(&buf[ret], "%02x", buf[i]);

 ret += sprintf(&buf[ret], "\n");

 return ret;
}
