
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int strlen (char const*) ;

int fdfs_validate_group_name(const char *group_name)
{
 const char *p;
 const char *pEnd;
 int len;

 len = strlen(group_name);
 if (len == 0)
 {
  return EINVAL;
 }

 pEnd = group_name + len;
 for (p=group_name; p<pEnd; p++)
 {
  if (!((*p >= 'a' && *p <= 'z') || (*p >= 'A' && *p <= 'Z') || (*p >= '0' && *p <= '9')))

  {
   return EINVAL;
  }
 }

 return 0;
}
