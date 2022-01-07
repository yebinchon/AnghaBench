
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hook_call (int ,int,char const*) ;
 int hook_print_str ;

void print_str(const char *str)
{
 int i;

 for (i = 1; str[i]; i++) ;
 hook_call(hook_print_str, i, str);
}
