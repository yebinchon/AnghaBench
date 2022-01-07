
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {int* pos; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ sprintf (char*,char*,int) ;
 struct mca_device* to_mca_device (struct device*) ;

__attribute__((used)) static ssize_t mca_show_pos(struct device *dev, struct device_attribute *attr, char *buf)
{

 int j, len=0;
 struct mca_device *mca_dev = to_mca_device(dev);

 for(j=0; j<8; j++)
  len += sprintf(buf+len, "%02x ", mca_dev->pos[j]);

 buf[len-1] = '\n';
 return len;
}
