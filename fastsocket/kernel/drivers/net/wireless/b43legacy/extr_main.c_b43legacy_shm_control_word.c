
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_MMIO_SHM_CONTROL ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static inline
void b43legacy_shm_control_word(struct b43legacy_wldev *dev,
    u16 routing, u16 offset)
{
 u32 control;



 control = routing;
 control <<= 16;
 control |= offset;
 b43legacy_write32(dev, B43legacy_MMIO_SHM_CONTROL, control);
}
