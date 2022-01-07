
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int bus_addr; } ;
struct TYPE_8__ {int gart_vm_start; int gart_size; int flags; TYPE_1__ gart_info; } ;
typedef TYPE_2__ drm_radeon_private_t ;


 int CHIP_RS690 ;
 int CHIP_RS740 ;
 int DRM_DEBUG (char*,int,long,int) ;
 int DRM_UDELAY (int) ;
 int IGP_READ_MCIND (TYPE_2__*,int ) ;
 int IGP_WRITE_MCIND (int ,int) ;
 int RADEON_FAMILY_MASK ;
 int RS480_1LEVEL_GART ;
 int RS480_AGP_ADDRESS_SPACE_SIZE ;
 int RS480_AGP_MODE_CNTL ;
 int RS480_GART_BASE ;
 int RS480_GART_CACHE_CNTRL ;
 int RS480_GART_CACHE_INVALIDATE ;
 int RS480_GART_EN ;
 int RS480_GART_FEATURE_ID ;
 int RS480_GART_INDEX_REG_EN ;
 int RS480_GTW_LAC_EN ;
 int RS480_HANG_EN ;
 int RS480_MC_MISC_CNTL ;
 int RS480_REQ_TYPE_SNOOP_DIS ;
 int RS480_REQ_TYPE_SNOOP_SHIFT ;
 int RS480_TLB_ENABLE ;
 int RS480_VA_SIZE_32MB ;
 int RS690_BLOCK_GFX_D3_EN ;
 int radeon_write_agp_base (TYPE_2__*,int) ;
 int radeon_write_agp_location (TYPE_2__*,int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void radeon_set_igpgart(drm_radeon_private_t * dev_priv, int on)
{
 u32 temp;

 if (on) {
  DRM_DEBUG("programming igp gart %08X %08lX %08X\n",
     dev_priv->gart_vm_start,
     (long)dev_priv->gart_info.bus_addr,
     dev_priv->gart_size);

  temp = IGP_READ_MCIND(dev_priv, RS480_MC_MISC_CNTL);
  if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS690) ||
      ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RS740))
   IGP_WRITE_MCIND(RS480_MC_MISC_CNTL, (RS480_GART_INDEX_REG_EN |
            RS690_BLOCK_GFX_D3_EN));
  else
   IGP_WRITE_MCIND(RS480_MC_MISC_CNTL, RS480_GART_INDEX_REG_EN);

  IGP_WRITE_MCIND(RS480_AGP_ADDRESS_SPACE_SIZE, (RS480_GART_EN |
              RS480_VA_SIZE_32MB));

  temp = IGP_READ_MCIND(dev_priv, RS480_GART_FEATURE_ID);
  IGP_WRITE_MCIND(RS480_GART_FEATURE_ID, (RS480_HANG_EN |
       RS480_TLB_ENABLE |
       RS480_GTW_LAC_EN |
       RS480_1LEVEL_GART));

  temp = dev_priv->gart_info.bus_addr & 0xfffff000;
  temp |= (upper_32_bits(dev_priv->gart_info.bus_addr) & 0xff) << 4;
  IGP_WRITE_MCIND(RS480_GART_BASE, temp);

  temp = IGP_READ_MCIND(dev_priv, RS480_AGP_MODE_CNTL);
  IGP_WRITE_MCIND(RS480_AGP_MODE_CNTL, ((1 << RS480_REQ_TYPE_SNOOP_SHIFT) |
            RS480_REQ_TYPE_SNOOP_DIS));

  radeon_write_agp_base(dev_priv, dev_priv->gart_vm_start);

  dev_priv->gart_size = 32*1024*1024;
  temp = (((dev_priv->gart_vm_start - 1 + dev_priv->gart_size) &
    0xffff0000) | (dev_priv->gart_vm_start >> 16));

  radeon_write_agp_location(dev_priv, temp);

  temp = IGP_READ_MCIND(dev_priv, RS480_AGP_ADDRESS_SPACE_SIZE);
  IGP_WRITE_MCIND(RS480_AGP_ADDRESS_SPACE_SIZE, (RS480_GART_EN |
              RS480_VA_SIZE_32MB));

  do {
   temp = IGP_READ_MCIND(dev_priv, RS480_GART_CACHE_CNTRL);
   if ((temp & RS480_GART_CACHE_INVALIDATE) == 0)
    break;
   DRM_UDELAY(1);
  } while (1);

  IGP_WRITE_MCIND(RS480_GART_CACHE_CNTRL,
    RS480_GART_CACHE_INVALIDATE);

  do {
   temp = IGP_READ_MCIND(dev_priv, RS480_GART_CACHE_CNTRL);
   if ((temp & RS480_GART_CACHE_INVALIDATE) == 0)
    break;
   DRM_UDELAY(1);
  } while (1);

  IGP_WRITE_MCIND(RS480_GART_CACHE_CNTRL, 0);
 } else {
  IGP_WRITE_MCIND(RS480_AGP_ADDRESS_SPACE_SIZE, 0);
 }
}
