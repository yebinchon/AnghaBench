
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int ipoib_set_umcast (int ,unsigned long) ;
 unsigned long simple_strtoul (char const*,int *,int ) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t set_umcast(struct device *dev,
     struct device_attribute *attr,
     const char *buf, size_t count)
{
 unsigned long umcast_val = simple_strtoul(buf, ((void*)0), 0);

 ipoib_set_umcast(to_net_dev(dev), umcast_val);

 return count;
}
