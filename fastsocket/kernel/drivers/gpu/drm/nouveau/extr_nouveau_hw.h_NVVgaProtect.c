
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_device {int dummy; } ;


 int NVReadVgaSeq (struct drm_device*,int,int ) ;
 int NVSetEnablePalette (struct drm_device*,int,int) ;
 int NVVgaSeqReset (struct drm_device*,int,int) ;
 int NVWriteVgaSeq (struct drm_device*,int,int ,int) ;
 int NV_VIO_SR_CLOCK_INDEX ;

__attribute__((used)) static inline void NVVgaProtect(struct drm_device *dev, int head, bool protect)
{
 uint8_t seq1 = NVReadVgaSeq(dev, head, NV_VIO_SR_CLOCK_INDEX);

 if (protect) {
  NVVgaSeqReset(dev, head, 1);
  NVWriteVgaSeq(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 | 0x20);
 } else {

  NVWriteVgaSeq(dev, head, NV_VIO_SR_CLOCK_INDEX, seq1 & ~0x20);
  NVVgaSeqReset(dev, head, 0);
 }
 NVSetEnablePalette(dev, head, protect);
}
