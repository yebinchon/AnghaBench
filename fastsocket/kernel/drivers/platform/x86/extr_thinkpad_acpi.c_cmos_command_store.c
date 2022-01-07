
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int issue_thinkpad_cmos_command (unsigned long) ;
 scalar_t__ parse_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t cmos_command_store(struct device *dev,
       struct device_attribute *attr,
       const char *buf, size_t count)
{
 unsigned long cmos_cmd;
 int res;

 if (parse_strtoul(buf, 21, &cmos_cmd))
  return -EINVAL;

 res = issue_thinkpad_cmos_command(cmos_cmd);
 return (res)? res : count;
}
