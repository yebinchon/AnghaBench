
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_3__ {size_t code; int region; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 size_t COUNTRY_CODE_LEN ;
 int memcmp (size_t*,int ,size_t) ;
 TYPE_1__* region_code_mapping ;
 size_t toupper (size_t) ;

__attribute__((used)) static u8 lbs_region_2_code(u8 *region)
{
 u8 i;

 for (i = 0; i < COUNTRY_CODE_LEN && region[i]; i++)
  region[i] = toupper(region[i]);

 for (i = 0; i < ARRAY_SIZE(region_code_mapping); i++) {
  if (!memcmp(region, region_code_mapping[i].region,
       COUNTRY_CODE_LEN))
   return (region_code_mapping[i].code);
 }


 return (region_code_mapping[0].code);
}
