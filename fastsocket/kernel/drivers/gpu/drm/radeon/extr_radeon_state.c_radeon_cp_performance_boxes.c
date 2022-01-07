
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_radeon_master_private {int dummy; } ;
struct TYPE_6__ {int last_frame_reads; scalar_t__ last_clear_reads; scalar_t__ clears; int boxes; int requested_bufs; scalar_t__ freelist_loops; } ;
struct TYPE_5__ {TYPE_4__ stats; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int RADEON_BOX_DMA_IDLE ;
 int RADEON_BOX_FLIP ;
 int RADEON_BOX_TEXTURE_LOAD ;
 int RADEON_BOX_WAIT_IDLE ;
 int memset (TYPE_4__*,int ,int) ;
 int radeon_clear_box (TYPE_1__*,struct drm_radeon_master_private*,int,int,int,int,int,int,int) ;

__attribute__((used)) static void radeon_cp_performance_boxes(drm_radeon_private_t *dev_priv, struct drm_radeon_master_private *master_priv)
{



 if (dev_priv->stats.last_frame_reads > 1 ||
     dev_priv->stats.last_clear_reads > dev_priv->stats.clears) {
  dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;
 }

 if (dev_priv->stats.freelist_loops) {
  dev_priv->stats.boxes |= RADEON_BOX_WAIT_IDLE;
 }



 if (dev_priv->stats.boxes & RADEON_BOX_FLIP)
  radeon_clear_box(dev_priv, master_priv, 4, 4, 8, 8, 255, 0, 255);



 if (dev_priv->stats.boxes & RADEON_BOX_WAIT_IDLE)
  radeon_clear_box(dev_priv, master_priv, 16, 4, 8, 8, 255, 0, 0);






 if (dev_priv->stats.boxes & RADEON_BOX_TEXTURE_LOAD)
  radeon_clear_box(dev_priv, master_priv, 40, 4, 8, 8, 255, 255, 0);



 if (!(dev_priv->stats.boxes & RADEON_BOX_DMA_IDLE))
  radeon_clear_box(dev_priv, master_priv, 64, 4, 8, 8, 0, 255, 0);




 if (dev_priv->stats.requested_bufs) {
  if (dev_priv->stats.requested_bufs > 100)
   dev_priv->stats.requested_bufs = 100;

  radeon_clear_box(dev_priv, master_priv, 4, 16,
     dev_priv->stats.requested_bufs, 4,
     196, 128, 128);
 }

 memset(&dev_priv->stats, 0, sizeof(dev_priv->stats));

}
