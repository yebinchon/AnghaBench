
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsl2550_data {int operating_mode; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct tsl2550_data* i2c_get_clientdata (int ) ;
 int sprintf (char*,char*,int) ;
 int to_i2c_client (struct device*) ;

__attribute__((used)) static ssize_t tsl2550_show_operating_mode(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct tsl2550_data *data = i2c_get_clientdata(to_i2c_client(dev));

 return sprintf(buf, "%u\n", data->operating_mode);
}
