
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_param {int dummy; } ;


 int ARRAY_SIZE (char**) ;
 int aspm_policy ;
 char** policy_str ;
 scalar_t__ sprintf (char*,char*,char*) ;

__attribute__((used)) static int pcie_aspm_get_policy(char *buffer, struct kernel_param *kp)
{
 int i, cnt = 0;
 for (i = 0; i < ARRAY_SIZE(policy_str); i++)
  if (i == aspm_policy)
   cnt += sprintf(buffer + cnt, "[%s] ", policy_str[i]);
  else
   cnt += sprintf(buffer + cnt, "%s ", policy_str[i]);
 return cnt;
}
