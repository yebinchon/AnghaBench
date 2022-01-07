
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_5__ {TYPE_3__* blit_vb; } ;
typedef TYPE_2__ drm_radeon_private_t ;
struct TYPE_6__ {TYPE_1__* file_priv; scalar_t__ used; } ;
struct TYPE_4__ {int master; } ;


 int radeon_cp_discard_buffer (struct drm_device*,int ,TYPE_3__*) ;

__attribute__((used)) static void r600_nomm_put_vb(struct drm_device *dev)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 dev_priv->blit_vb->used = 0;
 radeon_cp_discard_buffer(dev, dev_priv->blit_vb->file_priv->master, dev_priv->blit_vb);
}
