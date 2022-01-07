
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc47m1_data {int alarms; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct smsc47m1_data* smsc47m1_update_device (struct device*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t get_alarms(struct device *dev, struct device_attribute
     *devattr, char *buf)
{
 struct smsc47m1_data *data = smsc47m1_update_device(dev, 0);
 return sprintf(buf, "%d\n", data->alarms);
}
