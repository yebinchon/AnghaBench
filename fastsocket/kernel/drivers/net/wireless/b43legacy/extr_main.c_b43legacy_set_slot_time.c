
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct b43legacy_wldev {TYPE_1__ phy; } ;


 scalar_t__ B43legacy_PHYTYPE_G ;
 int B43legacy_SHM_SHARED ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int,scalar_t__) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int,scalar_t__) ;

__attribute__((used)) static void b43legacy_set_slot_time(struct b43legacy_wldev *dev,
        u16 slot_time)
{

 if (dev->phy.type != B43legacy_PHYTYPE_G)
  return;
 b43legacy_write16(dev, 0x684, 510 + slot_time);
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x0010,
         slot_time);
}
