
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct osst_tape {TYPE_1__* header_cache; scalar_t__ linux_media; scalar_t__ header_ok; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int major_rev; int minor_rev; } ;


 int PAGE_SIZE ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 int snprintf (char*,int ,char*,int,int) ;

__attribute__((used)) static ssize_t osst_adr_rev_show(struct device *dev,
     struct device_attribute *attr, char *buf)
{
 struct osst_tape * STp = (struct osst_tape *) dev_get_drvdata (dev);
 ssize_t l = 0;

 if (STp && STp->header_ok && STp->linux_media)
  l = snprintf(buf, PAGE_SIZE, "%d.%d\n", STp->header_cache->major_rev, STp->header_cache->minor_rev);
 return l;
}
