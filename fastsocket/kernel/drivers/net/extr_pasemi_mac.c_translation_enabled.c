
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FW_FEATURE_LPAR ;
 int firmware_has_feature (int ) ;

__attribute__((used)) static int translation_enabled(void)
{



 return firmware_has_feature(FW_FEATURE_LPAR);

}
