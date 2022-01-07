
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_3__ {scalar_t__ version; char const* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ath_rf_names ;

__attribute__((used)) static const char *ath9k_hw_rf_name(u16 rf_version)
{
 int i;

 for (i=0; i<ARRAY_SIZE(ath_rf_names); i++) {
  if (ath_rf_names[i].version == rf_version) {
   return ath_rf_names[i].name;
  }
 }

 return "????";
}
