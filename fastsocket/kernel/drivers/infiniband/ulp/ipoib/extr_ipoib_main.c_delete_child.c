
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ipoib_vlan_delete (int ,int) ;
 int sscanf (char const*,char*,int*) ;
 int to_net_dev (struct device*) ;

__attribute__((used)) static ssize_t delete_child(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 int pkey;
 int ret;

 if (sscanf(buf, "%i", &pkey) != 1)
  return -EINVAL;

 if (pkey < 0 || pkey > 0xffff)
  return -EINVAL;

 ret = ipoib_vlan_delete(to_net_dev(dev), pkey);

 return ret ? ret : count;

}
