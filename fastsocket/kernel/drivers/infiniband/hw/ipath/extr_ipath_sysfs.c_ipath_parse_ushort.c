
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int isdigit (char const) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;

int ipath_parse_ushort(const char *str, unsigned short *valp)
{
 unsigned long val;
 char *end;
 int ret;

 if (!isdigit(str[0])) {
  ret = -EINVAL;
  goto bail;
 }

 val = simple_strtoul(str, &end, 0);

 if (val > 0xffff) {
  ret = -EINVAL;
  goto bail;
 }

 *valp = val;

 ret = end + 1 - str;
 if (ret == 0)
  ret = -EINVAL;

bail:
 return ret;
}
