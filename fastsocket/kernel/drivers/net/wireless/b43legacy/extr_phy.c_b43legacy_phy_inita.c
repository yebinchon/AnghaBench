
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct b43legacy_wldev {TYPE_3__* dev; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {int boardflags_lo; } ;
struct TYPE_5__ {TYPE_1__ sprom; } ;


 int B43legacy_BFL_PACTRL ;
 int b43legacy_phy_setupg (struct b43legacy_wldev*) ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int,int) ;
 int might_sleep () ;

__attribute__((used)) static void b43legacy_phy_inita(struct b43legacy_wldev *dev)
{

 might_sleep();

 b43legacy_phy_setupg(dev);
 if (dev->dev->bus->sprom.boardflags_lo & B43legacy_BFL_PACTRL)
  b43legacy_phy_write(dev, 0x046E, 0x03CF);
}
