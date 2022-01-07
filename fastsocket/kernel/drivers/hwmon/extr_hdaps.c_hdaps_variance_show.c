
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HDAPS_PORT_XVAR ;
 int HDAPS_PORT_YVAR ;
 int hdaps_read_pair (int ,int ,int*,int*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t hdaps_variance_show(struct device *dev,
       struct device_attribute *attr, char *buf)
{
 int ret, x, y;

 ret = hdaps_read_pair(HDAPS_PORT_XVAR, HDAPS_PORT_YVAR, &x, &y);
 if (ret)
  return ret;

 return sprintf(buf, "(%d,%d)\n", x, y);
}
