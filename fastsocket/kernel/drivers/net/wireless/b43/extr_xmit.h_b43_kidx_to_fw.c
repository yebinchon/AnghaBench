
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;


 scalar_t__ b43_new_kidx_api (struct b43_wldev*) ;

__attribute__((used)) static inline u8 b43_kidx_to_fw(struct b43_wldev *dev, u8 raw_kidx)
{
 u8 firmware_kidx;
 if (b43_new_kidx_api(dev)) {
  firmware_kidx = raw_kidx;
 } else {
  if (raw_kidx >= 4)
   firmware_kidx = raw_kidx - 4;
  else
   firmware_kidx = raw_kidx;
 }
 return firmware_kidx;
}
