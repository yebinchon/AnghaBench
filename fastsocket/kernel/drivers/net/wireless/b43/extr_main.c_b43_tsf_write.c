
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct b43_wldev {int dummy; } ;


 int b43_time_lock (struct b43_wldev*) ;
 int b43_time_unlock (struct b43_wldev*) ;
 int b43_tsf_write_locked (struct b43_wldev*,int ) ;

void b43_tsf_write(struct b43_wldev *dev, u64 tsf)
{
 b43_time_lock(dev);
 b43_tsf_write_locked(dev, tsf);
 b43_time_unlock(dev);
}
