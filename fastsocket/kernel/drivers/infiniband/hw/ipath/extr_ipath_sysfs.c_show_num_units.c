
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int ipath_count_units (int *,int *,int *) ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t show_num_units(struct device_driver *dev, char *buf)
{
 return scnprintf(buf, PAGE_SIZE, "%d\n",
    ipath_count_units(((void*)0), ((void*)0), ((void*)0)));
}
