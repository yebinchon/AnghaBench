
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct drm_device {TYPE_3__* sg; TYPE_1__* agp; } ;
struct TYPE_9__ {TYPE_2__* cce_ring; int is_pci; } ;
typedef TYPE_4__ drm_r128_private_t ;
struct TYPE_8__ {scalar_t__ virtual; } ;
struct TYPE_7__ {int offset; } ;
struct TYPE_6__ {int base; } ;


 int DRM_DEBUG (char*) ;
 int R128_AGP_OFFSET ;
 int R128_BUS_CNTL ;
 int R128_BUS_MASTER_DIS ;
 int R128_PM4_BUFFER_ADDR ;
 int R128_PM4_BUFFER_DL_RPTR ;
 int R128_PM4_BUFFER_DL_WPTR ;
 int R128_PM4_BUFFER_OFFSET ;
 int R128_PM4_BUFFER_WM_CNTL ;
 int R128_READ (int ) ;
 int R128_WATERMARK_K ;
 int R128_WATERMARK_L ;
 int R128_WATERMARK_M ;
 int R128_WATERMARK_N ;
 int R128_WB_WM_SHIFT ;
 int R128_WMA_SHIFT ;
 int R128_WMB_SHIFT ;
 int R128_WMC_SHIFT ;
 int R128_WRITE (int ,int) ;

__attribute__((used)) static void r128_cce_init_ring_buffer(struct drm_device *dev,
          drm_r128_private_t *dev_priv)
{
 u32 ring_start;
 u32 tmp;

 DRM_DEBUG("\n");
  ring_start = dev_priv->cce_ring->offset -
      (unsigned long)dev->sg->virtual;

 R128_WRITE(R128_PM4_BUFFER_OFFSET, ring_start | R128_AGP_OFFSET);

 R128_WRITE(R128_PM4_BUFFER_DL_WPTR, 0);
 R128_WRITE(R128_PM4_BUFFER_DL_RPTR, 0);


 R128_WRITE(R128_PM4_BUFFER_WM_CNTL,
     ((R128_WATERMARK_L / 4) << R128_WMA_SHIFT)
     | ((R128_WATERMARK_M / 4) << R128_WMB_SHIFT)
     | ((R128_WATERMARK_N / 4) << R128_WMC_SHIFT)
     | ((R128_WATERMARK_K / 64) << R128_WB_WM_SHIFT));


 R128_READ(R128_PM4_BUFFER_ADDR);


 tmp = R128_READ(R128_BUS_CNTL) & ~R128_BUS_MASTER_DIS;
 R128_WRITE(R128_BUS_CNTL, tmp);
}
