
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int b43_set_slot_time (struct b43_wldev*,int) ;

__attribute__((used)) static void b43_short_slot_timing_enable(struct b43_wldev *dev)
{
 b43_set_slot_time(dev, 9);
}
