
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int countryCode; int isoName; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* allCountries ;
 int memcmp (int ,char*,int) ;

__attribute__((used)) static u16 ath_regd_find_country_by_name(char *alpha2)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(allCountries); i++) {
  if (!memcmp(allCountries[i].isoName, alpha2, 2))
   return allCountries[i].countryCode;
 }

 return -1;
}
