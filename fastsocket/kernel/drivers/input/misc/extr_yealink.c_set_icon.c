
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct yealink_dev {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_5__ {int name; } ;
struct TYPE_6__ {TYPE_1__ p; } ;
struct TYPE_7__ {char type; TYPE_2__ u; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 size_t ENODEV ;
 struct yealink_dev* dev_get_drvdata (struct device*) ;
 int down_write (int *) ;
 TYPE_3__* lcdMap ;
 int setChar (struct yealink_dev*,int,int) ;
 scalar_t__ strncmp (char const*,int ,size_t) ;
 int sysfs_rwsema ;
 int up_write (int *) ;

__attribute__((used)) static ssize_t set_icon(struct device *dev, const char *buf, size_t count,
   int chr)
{
 struct yealink_dev *yld;
 int i;

 down_write(&sysfs_rwsema);
 yld = dev_get_drvdata(dev);
 if (yld == ((void*)0)) {
  up_write(&sysfs_rwsema);
  return -ENODEV;
 }

 for (i = 0; i < ARRAY_SIZE(lcdMap); i++) {
  if (lcdMap[i].type != '.')
   continue;
  if (strncmp(buf, lcdMap[i].u.p.name, count) == 0) {
   setChar(yld, i, chr);
   break;
  }
 }

 up_write(&sysfs_rwsema);
 return count;
}
