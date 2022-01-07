
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct bsr_dev {int bsr_len; } ;
typedef int ssize_t ;


 struct bsr_dev* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t
bsr_len_show(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct bsr_dev *bsr_dev = dev_get_drvdata(dev);
 return sprintf(buf, "%llu\n", bsr_dev->bsr_len);
}
