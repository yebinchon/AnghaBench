
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mca_device {scalar_t__ pos_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ MCA_DUMMY_POS_START ;
 int sprintf (char*,char*,...) ;
 struct mca_device* to_mca_device (struct device*) ;

__attribute__((used)) static ssize_t mca_show_pos_id(struct device *dev, struct device_attribute *attr, char *buf)
{

 struct mca_device *mca_dev = to_mca_device(dev);
 int len;

 if(mca_dev->pos_id < MCA_DUMMY_POS_START)
  len = sprintf(buf, "%04x\n", mca_dev->pos_id);
 else
  len = sprintf(buf, "none\n");
 return len;
}
