
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_8__ {int bus_addr; } ;
struct TYPE_9__ {int flags; int gart_vm_start; int gart_size; TYPE_1__ gart_info; } ;
typedef TYPE_2__ drm_radeon_private_t ;


 int CHIP_RS600 ;
 int CHIP_RS690 ;
 int CHIP_RS740 ;
 int RADEON_AGP_COMMAND ;
 int RADEON_AIC_CNTL ;
 int RADEON_AIC_HI_ADDR ;
 int RADEON_AIC_LO_ADDR ;
 int RADEON_AIC_PT_BASE ;
 int RADEON_FAMILY_MASK ;
 int RADEON_IS_IGPGART ;
 int RADEON_IS_PCIE ;
 int RADEON_PCIGART_TRANSLATE_EN ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int radeon_set_igpgart (TYPE_2__*,int) ;
 int radeon_set_pciegart (TYPE_2__*,int) ;
 int radeon_write_agp_location (TYPE_2__*,int) ;
 int rs600_set_igpgart (TYPE_2__*,int) ;

__attribute__((used)) static void radeon_set_pcigart(drm_radeon_private_t * dev_priv, int on)
{
 u32 tmp;

 if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS690) ||
     ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS740) ||
     (dev_priv->flags & RADEON_IS_IGPGART)) {
  radeon_set_igpgart(dev_priv, on);
  return;
 }

 if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS600) {
  rs600_set_igpgart(dev_priv, on);
  return;
 }

 if (dev_priv->flags & RADEON_IS_PCIE) {
  radeon_set_pciegart(dev_priv, on);
  return;
 }

 tmp = RADEON_READ(RADEON_AIC_CNTL);

 if (on) {
  RADEON_WRITE(RADEON_AIC_CNTL,
        tmp | RADEON_PCIGART_TRANSLATE_EN);



  RADEON_WRITE(RADEON_AIC_PT_BASE, dev_priv->gart_info.bus_addr);



  RADEON_WRITE(RADEON_AIC_LO_ADDR, dev_priv->gart_vm_start);
  RADEON_WRITE(RADEON_AIC_HI_ADDR, dev_priv->gart_vm_start
        + dev_priv->gart_size - 1);



  radeon_write_agp_location(dev_priv, 0xffffffc0);
  RADEON_WRITE(RADEON_AGP_COMMAND, 0);
 } else {
  RADEON_WRITE(RADEON_AIC_CNTL,
        tmp & ~RADEON_PCIGART_TRANSLATE_EN);
 }
}
