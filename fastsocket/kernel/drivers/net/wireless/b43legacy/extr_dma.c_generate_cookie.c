
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_dmaring {int index; } ;


 int B43legacy_WARN_ON (int) ;

__attribute__((used)) static u16 generate_cookie(struct b43legacy_dmaring *ring,
      int slot)
{
 u16 cookie = 0x1000;







 switch (ring->index) {
 case 0:
  cookie = 0xA000;
  break;
 case 1:
  cookie = 0xB000;
  break;
 case 2:
  cookie = 0xC000;
  break;
 case 3:
  cookie = 0xD000;
  break;
 case 4:
  cookie = 0xE000;
  break;
 case 5:
  cookie = 0xF000;
  break;
 }
 B43legacy_WARN_ON(!(((u16)slot & 0xF000) == 0x0000));
 cookie |= (u16)slot;

 return cookie;
}
