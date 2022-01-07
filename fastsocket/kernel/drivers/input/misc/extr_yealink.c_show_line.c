
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct yealink_dev {int * lcdMap; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int type; } ;


 int ENODEV ;
 struct yealink_dev* dev_get_drvdata (struct device*) ;
 int down_read (int *) ;
 TYPE_1__* lcdMap ;
 int sysfs_rwsema ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t show_line(struct device *dev, char *buf, int a, int b)
{
 struct yealink_dev *yld;
 int i;

 down_read(&sysfs_rwsema);
 yld = dev_get_drvdata(dev);
 if (yld == ((void*)0)) {
  up_read(&sysfs_rwsema);
  return -ENODEV;
 }

 for (i = a; i < b; i++)
  *buf++ = lcdMap[i].type;
 *buf++ = '\n';
 for (i = a; i < b; i++)
  *buf++ = yld->lcdMap[i];
 *buf++ = '\n';
 *buf = 0;

 up_read(&sysfs_rwsema);
 return 3 + ((b - a) << 1);
}
