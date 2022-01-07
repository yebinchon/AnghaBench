
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct country_code_to_enum_rd {int dummy; } ;


 int COUNTRY_ERD_FLAG ;
 int CTRY_DEFAULT ;
 struct country_code_to_enum_rd* ath_regd_find_country (int) ;

__attribute__((used)) static u16 ath_regd_get_default_country(u16 rd)
{
 if (rd & COUNTRY_ERD_FLAG) {
  struct country_code_to_enum_rd *country = ((void*)0);
  u16 cc = rd & ~COUNTRY_ERD_FLAG;

  country = ath_regd_find_country(cc);
  if (country != ((void*)0))
   return cc;
 }

 return CTRY_DEFAULT;
}
