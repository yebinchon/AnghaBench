
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int HDAPS_PORT_TEMP2 ;
 int hdaps_readb_one (int ,int*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t hdaps_temp2_show(struct device *dev,
    struct device_attribute *attr, char *buf)
{
 u8 temp;
 int ret;

 ret = hdaps_readb_one(HDAPS_PORT_TEMP2, &temp);
 if (ret < 0)
  return ret;

 return sprintf(buf, "%u\n", temp);
}
