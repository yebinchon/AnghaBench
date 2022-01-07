
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_radeon_master_private {TYPE_1__* sarea_priv; } ;
struct drm_master {struct drm_radeon_master_private* driver_priv; } ;
struct drm_device {TYPE_2__* dev_private; } ;
struct drm_buf {int pending; scalar_t__ used; TYPE_3__* dev_private; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_6__ {scalar_t__ age; } ;
typedef TYPE_3__ drm_radeon_buf_priv_t ;
struct TYPE_4__ {scalar_t__ last_dispatch; } ;


 int ADVANCE_RING () ;
 int BEGIN_RING (int) ;
 int CHIP_R600 ;
 int R600_DISPATCH_AGE (scalar_t__) ;
 int RADEON_DISPATCH_AGE (scalar_t__) ;
 int RADEON_FAMILY_MASK ;
 int RING_LOCALS ;

void radeon_cp_discard_buffer(struct drm_device *dev, struct drm_master *master, struct drm_buf *buf)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 struct drm_radeon_master_private *master_priv = master->driver_priv;
 drm_radeon_buf_priv_t *buf_priv = buf->dev_private;
 RING_LOCALS;

 buf_priv->age = ++master_priv->sarea_priv->last_dispatch;


 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600) {
  BEGIN_RING(3);
  R600_DISPATCH_AGE(buf_priv->age);
  ADVANCE_RING();
 } else {
  BEGIN_RING(2);
  RADEON_DISPATCH_AGE(buf_priv->age);
  ADVANCE_RING();
 }

 buf->pending = 1;
 buf->used = 0;
}
