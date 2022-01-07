
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int EINVAL ;
 int simple_strtoul (char const*,char**,int) ;
 int start_readonly ;

__attribute__((used)) static int set_ro(const char *val, struct kernel_param *kp)
{
 char *e;
 int num = simple_strtoul(val, &e, 10);
 if (*val && (*e == '\0' || *e == '\n')) {
  start_readonly = num;
  return 0;
 }
 return -EINVAL;
}
