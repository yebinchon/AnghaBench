
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_MACCMD_BGNOISE ;
 int B43_MMIO_MACCMD ;
 int b43_jssi_write (struct b43_wldev*,int) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_generate_noise_sample(struct b43_wldev *dev)
{
 b43_jssi_write(dev, 0x7F7F7F7F);
 b43_write32(dev, B43_MMIO_MACCMD,
      b43_read32(dev, B43_MMIO_MACCMD) | B43_MACCMD_BGNOISE);
}
