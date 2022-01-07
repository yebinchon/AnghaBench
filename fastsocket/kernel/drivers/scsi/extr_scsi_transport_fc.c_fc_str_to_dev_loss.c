
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long UINT_MAX ;
 unsigned long simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static int fc_str_to_dev_loss(const char *buf, unsigned long *val)
{
 char *cp;

 *val = simple_strtoul(buf, &cp, 0);
 if ((*cp && (*cp != '\n')) || (*val < 0))
  return -EINVAL;



 if (*val > UINT_MAX)
  return -EINVAL;

 return 0;
}
