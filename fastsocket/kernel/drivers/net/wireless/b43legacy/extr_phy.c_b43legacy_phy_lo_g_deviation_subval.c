
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43legacy_phy {scalar_t__ gmode; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;


 int b43legacy_phy_read (struct b43legacy_wldev*,int) ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int,int) ;
 int b43legacy_voluntary_preempt () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static inline
u16 b43legacy_phy_lo_g_deviation_subval(struct b43legacy_wldev *dev,
     u16 control)
{
 struct b43legacy_phy *phy = &dev->phy;
 u16 ret;
 unsigned long flags;

 local_irq_save(flags);
 if (phy->gmode) {
  b43legacy_phy_write(dev, 0x15, 0xE300);
  control <<= 8;
  b43legacy_phy_write(dev, 0x0812, control | 0x00B0);
  udelay(5);
  b43legacy_phy_write(dev, 0x0812, control | 0x00B2);
  udelay(2);
  b43legacy_phy_write(dev, 0x0812, control | 0x00B3);
  udelay(4);
  b43legacy_phy_write(dev, 0x0015, 0xF300);
  udelay(8);
 } else {
  b43legacy_phy_write(dev, 0x0015, control | 0xEFA0);
  udelay(2);
  b43legacy_phy_write(dev, 0x0015, control | 0xEFE0);
  udelay(4);
  b43legacy_phy_write(dev, 0x0015, control | 0xFFE0);
  udelay(8);
 }
 ret = b43legacy_phy_read(dev, 0x002D);
 local_irq_restore(flags);
 b43legacy_voluntary_preempt();

 return ret;
}
