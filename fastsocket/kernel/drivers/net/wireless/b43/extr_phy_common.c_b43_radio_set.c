
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int b43_radio_read16 (struct b43_wldev*,int) ;
 int b43_radio_write16 (struct b43_wldev*,int,int) ;

void b43_radio_set(struct b43_wldev *dev, u16 offset, u16 set)
{
 b43_radio_write16(dev, offset,
     b43_radio_read16(dev, offset) | set);
}
