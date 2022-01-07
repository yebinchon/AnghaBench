
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct adm9240_data {int aout; } ;
typedef int ssize_t ;


 int AOUT_FROM_REG (int ) ;
 struct adm9240_data* adm9240_update_device (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_aout(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct adm9240_data *data = adm9240_update_device(dev);
 return sprintf(buf, "%d\n", AOUT_FROM_REG(data->aout));
}
