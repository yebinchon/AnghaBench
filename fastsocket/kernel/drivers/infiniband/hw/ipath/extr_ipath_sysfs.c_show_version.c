
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int ib_ipath_version ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_version(struct device_driver *dev, char *buf)
{

 return scnprintf(buf, PAGE_SIZE, "%s", ib_ipath_version);
}
