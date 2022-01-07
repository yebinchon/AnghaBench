
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_SHM_SCRATCH ;
 int B43_SHM_SC_LRLIMIT ;
 int B43_SHM_SC_SRLIMIT ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static void b43_set_retry_limits(struct b43_wldev *dev,
     unsigned int short_retry,
     unsigned int long_retry)
{


 short_retry = min(short_retry, (unsigned int)0xF);
 long_retry = min(long_retry, (unsigned int)0xF);

 b43_shm_write16(dev, B43_SHM_SCRATCH, B43_SHM_SC_SRLIMIT,
   short_retry);
 b43_shm_write16(dev, B43_SHM_SCRATCH, B43_SHM_SC_LRLIMIT,
   long_retry);
}
