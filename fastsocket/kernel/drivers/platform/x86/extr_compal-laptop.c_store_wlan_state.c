
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int set_wlan_state (int) ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static ssize_t store_wlan_state(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 int state, ret;

 if (sscanf(buf, "%i", &state) != 1 || (state < 0 || state > 1))
  return -EINVAL;

 ret = set_wlan_state(state);
 if (ret < 0)
  return ret;

 return count;
}
