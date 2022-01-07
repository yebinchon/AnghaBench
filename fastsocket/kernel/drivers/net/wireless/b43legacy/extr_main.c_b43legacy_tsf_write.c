
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct b43legacy_wldev {int dummy; } ;


 int b43legacy_time_lock (struct b43legacy_wldev*) ;
 int b43legacy_time_unlock (struct b43legacy_wldev*) ;
 int b43legacy_tsf_write_locked (struct b43legacy_wldev*,int ) ;

void b43legacy_tsf_write(struct b43legacy_wldev *dev, u64 tsf)
{
 b43legacy_time_lock(dev);
 b43legacy_tsf_write_locked(dev, tsf);
 b43legacy_time_unlock(dev);
}
