
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int nasid; int part_num; int mfg_num; } ;
struct cx_dev {int bt; TYPE_1__ cx_id; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int,int) ;
 struct cx_dev* to_cx_dev (struct device*) ;

__attribute__((used)) static ssize_t show_cxdev_control(struct device *dev, struct device_attribute *attr, char *buf)
{
 struct cx_dev *cx_dev = to_cx_dev(dev);

 return sprintf(buf, "0x%x 0x%x 0x%x 0x%x\n",
         cx_dev->cx_id.nasid,
         cx_dev->cx_id.part_num, cx_dev->cx_id.mfg_num,
         cx_dev->bt);
}
