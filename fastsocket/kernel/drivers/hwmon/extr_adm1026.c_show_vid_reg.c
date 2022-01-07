
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm1026_data {int gpio; int vrm; } ;
typedef int ssize_t ;


 struct adm1026_data* adm1026_update_device (struct device*) ;
 int dev_dbg (struct device*,char*) ;
 int sprintf (char*,char*,int) ;
 int vid_from_reg (int,int ) ;

__attribute__((used)) static ssize_t show_vid_reg(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct adm1026_data *data = adm1026_update_device(dev);
 int vid = (data->gpio >> 11) & 0x1f;

 dev_dbg(dev, "Setting VID from GPIO11-15.\n");
 return sprintf(buf, "%d\n", vid_from_reg(vid, data->vrm));
}
