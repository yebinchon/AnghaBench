
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;
struct b43legacy_lopair {int used; } ;


 struct b43legacy_lopair* b43legacy_current_lopair (struct b43legacy_wldev*) ;

__attribute__((used)) static
void b43legacy_phy_lo_mark_current_used(struct b43legacy_wldev *dev)
{
 struct b43legacy_lopair *pair;

 pair = b43legacy_current_lopair(dev);
 pair->used = 1;
}
