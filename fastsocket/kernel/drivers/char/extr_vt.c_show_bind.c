
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct con_driver {int con; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int con_is_bound (int ) ;
 struct con_driver* dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t show_bind(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct con_driver *con = dev_get_drvdata(dev);
 int bind = con_is_bound(con->con);

 return snprintf(buf, PAGE_SIZE, "%i\n", bind);
}
