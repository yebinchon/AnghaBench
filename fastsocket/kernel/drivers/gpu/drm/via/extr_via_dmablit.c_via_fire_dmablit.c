
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_3__ {int chain_start; } ;
typedef TYPE_1__ drm_via_sg_info_t ;
typedef int drm_via_private_t ;


 int DRM_WRITEMEMORYBARRIER () ;
 int VIA_DMA_CSR_DD ;
 int VIA_DMA_CSR_DE ;
 int VIA_DMA_CSR_TD ;
 int VIA_DMA_CSR_TS ;
 int VIA_DMA_MR_CM ;
 int VIA_DMA_MR_TDIE ;
 scalar_t__ VIA_PCI_DMA_BCR0 ;
 scalar_t__ VIA_PCI_DMA_CSR0 ;
 scalar_t__ VIA_PCI_DMA_DAR0 ;
 scalar_t__ VIA_PCI_DMA_DPR0 ;
 scalar_t__ VIA_PCI_DMA_MAR0 ;
 scalar_t__ VIA_PCI_DMA_MR0 ;
 int VIA_READ (scalar_t__) ;
 int VIA_WRITE (scalar_t__,int) ;

__attribute__((used)) static void
via_fire_dmablit(struct drm_device *dev, drm_via_sg_info_t *vsg, int engine)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;

 VIA_WRITE(VIA_PCI_DMA_MAR0 + engine*0x10, 0);
 VIA_WRITE(VIA_PCI_DMA_DAR0 + engine*0x10, 0);
 VIA_WRITE(VIA_PCI_DMA_CSR0 + engine*0x04, VIA_DMA_CSR_DD | VIA_DMA_CSR_TD |
    VIA_DMA_CSR_DE);
 VIA_WRITE(VIA_PCI_DMA_MR0 + engine*0x04, VIA_DMA_MR_CM | VIA_DMA_MR_TDIE);
 VIA_WRITE(VIA_PCI_DMA_BCR0 + engine*0x10, 0);
 VIA_WRITE(VIA_PCI_DMA_DPR0 + engine*0x10, vsg->chain_start);
 DRM_WRITEMEMORYBARRIER();
 VIA_WRITE(VIA_PCI_DMA_CSR0 + engine*0x04, VIA_DMA_CSR_DE | VIA_DMA_CSR_TS);
 VIA_READ(VIA_PCI_DMA_CSR0 + engine*0x04);
}
