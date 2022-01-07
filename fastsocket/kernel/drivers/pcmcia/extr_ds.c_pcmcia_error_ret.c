
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; char const* msg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* error_table ;

const char *pcmcia_error_ret(int ret)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(error_table); i++)
  if (error_table[i].key == ret)
   return error_table[i].msg;

 return "unknown";
}
