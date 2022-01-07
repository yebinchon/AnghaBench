
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ dev_private; } ;
typedef int drm_via_private_t ;


 int VIA_DMA_CSR_DD ;
 int VIA_DMA_CSR_TD ;
 scalar_t__ VIA_PCI_DMA_CSR0 ;
 int VIA_WRITE (scalar_t__,int) ;

__attribute__((used)) static void
via_dmablit_engine_off(struct drm_device *dev, int engine)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *)dev->dev_private;

 VIA_WRITE(VIA_PCI_DMA_CSR0 + engine*0x04, VIA_DMA_CSR_TD | VIA_DMA_CSR_DD);
}
