
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int *) ;
 int ecrc_policy ;
 int * ecrc_policy_str ;
 int strlen (int ) ;
 int strncmp (char*,int ,int ) ;

void pcie_ecrc_get_policy(char *str)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(ecrc_policy_str); i++)
  if (!strncmp(str, ecrc_policy_str[i],
        strlen(ecrc_policy_str[i])))
   break;
 if (i >= ARRAY_SIZE(ecrc_policy_str))
  return;

 ecrc_policy = i;
}
