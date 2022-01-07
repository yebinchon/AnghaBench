
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;


 int B43legacy_SHM_WIRELESS ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static void b43legacy_set_retry_limits(struct b43legacy_wldev *dev,
           unsigned int short_retry,
           unsigned int long_retry)
{


 short_retry = min(short_retry, (unsigned int)0xF);
 long_retry = min(long_retry, (unsigned int)0xF);

 b43legacy_shm_write16(dev, B43legacy_SHM_WIRELESS, 0x0006, short_retry);
 b43legacy_shm_write16(dev, B43legacy_SHM_WIRELESS, 0x0007, long_retry);
}
