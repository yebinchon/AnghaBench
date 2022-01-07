
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int capability; } ;


 TYPE_1__* interface ;

__attribute__((used)) static bool has_cap(u32 cap)
{
 if ((interface->capability & cap) != 0)
  return 1;

 return 0;
}
