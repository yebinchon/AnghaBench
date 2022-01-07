
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static int parse_arg(const char *buf, unsigned long count, int *val)
{
 if (!count)
  return 0;
 if (count > 31)
  return -EINVAL;
 if (sscanf(buf, "%i", val) != 1)
  return -EINVAL;
 return count;
}
