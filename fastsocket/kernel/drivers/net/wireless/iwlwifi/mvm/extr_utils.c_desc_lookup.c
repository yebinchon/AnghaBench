
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ num; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* advanced_lookup ;

__attribute__((used)) static const char *desc_lookup(u32 num)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(advanced_lookup) - 1; i++)
  if (advanced_lookup[i].num == num)
   return advanced_lookup[i].name;


 return advanced_lookup[i].name;
}
