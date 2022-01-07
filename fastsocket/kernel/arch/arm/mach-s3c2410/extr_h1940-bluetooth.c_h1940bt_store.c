
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int h1940bt_enable (int) ;
 int isspace (char) ;
 int simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static ssize_t h1940bt_store(struct device *dev, struct device_attribute *attr, const char *buf, size_t count)
{
 int new_state;
 char *endp;

 new_state = simple_strtoul(buf, &endp, 0);
 if (*endp && !isspace(*endp))
  return -EINVAL;

 h1940bt_enable(new_state);

 return count;
}
