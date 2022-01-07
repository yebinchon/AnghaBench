
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 int B43_MACCTL_AWAKE ;
 int B43_MACCTL_HWPS ;
 int B43_MMIO_MACCTL ;
 unsigned int B43_PS_ASLEEP ;
 unsigned int B43_PS_AWAKE ;
 unsigned int B43_PS_DISABLED ;
 unsigned int B43_PS_ENABLED ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_UCODESTAT ;
 scalar_t__ B43_SHM_SH_UCODESTAT_SLEEP ;
 int B43_WARN_ON (int) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 scalar_t__ b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int ) ;
 int udelay (int) ;

void b43_power_saving_ctl_bits(struct b43_wldev *dev, unsigned int ps_flags)
{
 u32 macctl;
 u16 ucstat;
 bool hwps;
 bool awake;
 int i;

 B43_WARN_ON((ps_flags & B43_PS_ENABLED) &&
      (ps_flags & B43_PS_DISABLED));
 B43_WARN_ON((ps_flags & B43_PS_AWAKE) && (ps_flags & B43_PS_ASLEEP));

 if (ps_flags & B43_PS_ENABLED) {
  hwps = 1;
 } else if (ps_flags & B43_PS_DISABLED) {
  hwps = 0;
 } else {


 }
 if (ps_flags & B43_PS_AWAKE) {
  awake = 1;
 } else if (ps_flags & B43_PS_ASLEEP) {
  awake = 0;
 } else {



 }


 hwps = 0;
 awake = 1;

 macctl = b43_read32(dev, B43_MMIO_MACCTL);
 if (hwps)
  macctl |= B43_MACCTL_HWPS;
 else
  macctl &= ~B43_MACCTL_HWPS;
 if (awake)
  macctl |= B43_MACCTL_AWAKE;
 else
  macctl &= ~B43_MACCTL_AWAKE;
 b43_write32(dev, B43_MMIO_MACCTL, macctl);

 b43_read32(dev, B43_MMIO_MACCTL);
 if (awake && dev->dev->core_rev >= 5) {

  for (i = 0; i < 100; i++) {
   ucstat = b43_shm_read16(dev, B43_SHM_SHARED,
      B43_SHM_SH_UCODESTAT);
   if (ucstat != B43_SHM_SH_UCODESTAT_SLEEP)
    break;
   udelay(10);
  }
 }
}
