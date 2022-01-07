
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; char const* msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* service_table ;

const char *pcmcia_error_func(int func)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(service_table); i++)
  if (service_table[i].key == func)
   return service_table[i].msg;

 return "Unknown service number";
}
