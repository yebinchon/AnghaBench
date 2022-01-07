
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct b43legacy_wldev {int dummy; } ;


 scalar_t__ b43legacy_new_kidx_api (struct b43legacy_wldev*) ;

__attribute__((used)) static inline
u8 b43legacy_kidx_to_raw(struct b43legacy_wldev *dev, u8 firmware_kidx)
{
 u8 raw_kidx;
 if (b43legacy_new_kidx_api(dev))
  raw_kidx = firmware_kidx;
 else

  raw_kidx = firmware_kidx + 4;
 return raw_kidx;
}
