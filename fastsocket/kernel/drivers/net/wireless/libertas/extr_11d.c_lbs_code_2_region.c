
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {size_t code; size_t* region; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* region_code_mapping ;

__attribute__((used)) static u8 *lbs_code_2_region(u8 code)
{
 u8 i;

 for (i = 0; i < ARRAY_SIZE(region_code_mapping); i++) {
  if (region_code_mapping[i].code == code)
   return (region_code_mapping[i].region);
 }

 return (region_code_mapping[0].region);
}
