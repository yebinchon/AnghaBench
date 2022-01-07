
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_device {TYPE_1__* pdev; TYPE_2__* dev_private; } ;
struct TYPE_5__ {int flags; int num_z_pipes; int num_gb_pipes; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_4__ {int device; } ;


 int CHIP_R300 ;
 int CHIP_R350 ;
 int CHIP_R420 ;
 int CHIP_RV515 ;
 int CHIP_RV530 ;
 int DRM_INFO (char*,int) ;
 int R300_DC_AUTOFLUSH_ENABLE ;
 int R300_DC_DC_DISABLE_IGNORE_PE ;
 int R300_DST_PIPE_CONFIG ;
 int R300_ENABLE_TILING ;
 int R300_GB_TILE_CONFIG ;
 int R300_PIPE_AUTO_CONFIG ;
 int R300_PIPE_COUNT_R300 ;
 int R300_PIPE_COUNT_R420 ;
 int R300_PIPE_COUNT_R420_3P ;
 int R300_PIPE_COUNT_RV350 ;
 int R300_RB2D_DSTCACHE_MODE ;
 int R300_SU_REG_DEST ;
 int R300_TILE_SIZE_16 ;
 int R400_GB_PIPE_SELECT ;
 int R500_DYN_SCLK_PWMEM_PIPE ;
 int RADEON_FAMILY_MASK ;
 int RADEON_READ (int ) ;
 int RADEON_WRITE (int ,int) ;
 int RADEON_WRITE_PLL (int ,int) ;
 int RV530_GB_PIPE_SELECT2 ;
 int radeon_do_wait_for_idle (TYPE_2__*) ;

__attribute__((used)) static void radeon_init_pipes(struct drm_device *dev)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 uint32_t gb_tile_config, gb_pipe_sel = 0;

 if ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_RV530) {
  uint32_t z_pipe_sel = RADEON_READ(RV530_GB_PIPE_SELECT2);
  if ((z_pipe_sel & 3) == 3)
   dev_priv->num_z_pipes = 2;
  else
   dev_priv->num_z_pipes = 1;
 } else
  dev_priv->num_z_pipes = 1;


 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R420) {
  gb_pipe_sel = RADEON_READ(R400_GB_PIPE_SELECT);
  dev_priv->num_gb_pipes = ((gb_pipe_sel >> 12) & 0x3) + 1;

  if ((dev->pdev->device == 0x5e4c) ||
      (dev->pdev->device == 0x5e4f))
   dev_priv->num_gb_pipes = 1;
 } else {

  if (((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_R300 &&
       dev->pdev->device != 0x4144) ||
      ((dev_priv->flags & RADEON_FAMILY_MASK) == CHIP_R350 &&
       dev->pdev->device != 0x4148)) {
   dev_priv->num_gb_pipes = 2;
  } else {

   dev_priv->num_gb_pipes = 1;
  }
 }
 DRM_INFO("Num pipes: %d\n", dev_priv->num_gb_pipes);

 gb_tile_config = (R300_ENABLE_TILING | R300_TILE_SIZE_16 );

 switch (dev_priv->num_gb_pipes) {
 case 2: gb_tile_config |= R300_PIPE_COUNT_R300; break;
 case 3: gb_tile_config |= R300_PIPE_COUNT_R420_3P; break;
 case 4: gb_tile_config |= R300_PIPE_COUNT_R420; break;
 default:
 case 1: gb_tile_config |= R300_PIPE_COUNT_RV350; break;
 }

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV515) {
  RADEON_WRITE_PLL(R500_DYN_SCLK_PWMEM_PIPE, (1 | ((gb_pipe_sel >> 8) & 0xf) << 4));
  RADEON_WRITE(R300_SU_REG_DEST, ((1 << dev_priv->num_gb_pipes) - 1));
 }
 RADEON_WRITE(R300_GB_TILE_CONFIG, gb_tile_config);
 radeon_do_wait_for_idle(dev_priv);
 RADEON_WRITE(R300_DST_PIPE_CONFIG, RADEON_READ(R300_DST_PIPE_CONFIG) | R300_PIPE_AUTO_CONFIG);
 RADEON_WRITE(R300_RB2D_DSTCACHE_MODE, (RADEON_READ(R300_RB2D_DSTCACHE_MODE) |
            R300_DC_AUTOFLUSH_ENABLE |
            R300_DC_DC_DISABLE_IGNORE_PE));


}
