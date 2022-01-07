
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u16 ;
typedef enum b43legacy_dmatype { ____Placeholder_b43legacy_dmatype } b43legacy_dmatype ;


 int ARRAY_SIZE (int const*) ;






 int B43legacy_WARN_ON (int) ;

__attribute__((used)) static u16 b43legacy_dmacontroller_base(enum b43legacy_dmatype type,
     int controller_idx)
{
 static const u16 map32[] = {
  133,
  132,
  131,
  130,
  129,
  128,
 };

 B43legacy_WARN_ON(!(controller_idx >= 0 &&
     controller_idx < ARRAY_SIZE(map32)));
 return map32[controller_idx];
}
