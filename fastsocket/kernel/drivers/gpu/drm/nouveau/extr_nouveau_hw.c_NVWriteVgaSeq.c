
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct drm_device {int dummy; } ;


 int NVWritePRMVIO (struct drm_device*,int,int ,int ) ;
 int NV_PRMVIO_SR ;
 int NV_PRMVIO_SRX ;

void
NVWriteVgaSeq(struct drm_device *dev, int head, uint8_t index, uint8_t value)
{
 NVWritePRMVIO(dev, head, NV_PRMVIO_SRX, index);
 NVWritePRMVIO(dev, head, NV_PRMVIO_SR, value);
}
