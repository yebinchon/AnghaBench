
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_driver {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 int st_fixed_buffer_size ;

__attribute__((used)) static ssize_t st_fixed_buffer_size_show(struct device_driver *ddp, char *buf)
{
 return snprintf(buf, PAGE_SIZE, "%d\n", st_fixed_buffer_size);
}
