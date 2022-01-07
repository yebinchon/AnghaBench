
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* value; scalar_t__ name; } ;


 int MAX_ENTRY ;
 TYPE_1__* adam2_env ;
 int strcmp (char const*,scalar_t__) ;

char *prom_getenv(const char *name)
{
 int i;
 for (i = 0; (i < MAX_ENTRY) && adam2_env[i].name; i++)
  if (!strcmp(name, adam2_env[i].name))
   return adam2_env[i].value;

 return ((void*)0);
}
