
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* radio_write ) (struct b43_wldev*,int ,int ) ;} ;


 int assert_mac_suspended (struct b43_wldev*) ;
 int stub1 (struct b43_wldev*,int ,int ) ;

void b43_radio_write(struct b43_wldev *dev, u16 reg, u16 value)
{
 assert_mac_suspended(dev);
 dev->phy.ops->radio_write(dev, reg, value);
}
