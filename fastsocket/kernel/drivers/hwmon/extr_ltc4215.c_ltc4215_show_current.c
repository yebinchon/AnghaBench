
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 unsigned int ltc4215_get_current (struct device*) ;
 int snprintf (char*,int ,char*,unsigned int const) ;

__attribute__((used)) static ssize_t ltc4215_show_current(struct device *dev,
        struct device_attribute *da,
        char *buf)
{
 const unsigned int curr = ltc4215_get_current(dev);

 return snprintf(buf, PAGE_SIZE, "%u\n", curr);
}
