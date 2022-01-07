
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int attr_store (struct device*,char const*,size_t,int ,int ,int ) ;
 int set_nservers ;

__attribute__((used)) static ssize_t store_nservers(struct device *d, struct device_attribute *attr,
         const char *buf, size_t len)
{
 return attr_store(d, buf, len, set_nservers, 0, ~0);
}
