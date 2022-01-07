
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {struct niu_parent* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct niu_parent {int num_ports; int * txchan_per_port; int * rxchan_per_port; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static ssize_t __show_chan_per_port(struct device *dev,
        struct device_attribute *attr, char *buf,
        int rx)
{
 struct platform_device *plat_dev = to_platform_device(dev);
 struct niu_parent *p = plat_dev->dev.platform_data;
 char *orig_buf = buf;
 u8 *arr;
 int i;

 arr = (rx ? p->rxchan_per_port : p->txchan_per_port);

 for (i = 0; i < p->num_ports; i++) {
  buf += sprintf(buf,
          (i == 0) ? "%d" : " %d",
          arr[i]);
 }
 buf += sprintf(buf, "\n");

 return buf - orig_buf;
}
