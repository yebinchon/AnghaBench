
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int master; } ;
struct drm_device {int * dev_private; } ;
struct drm_buf {int dummy; } ;
typedef int drm_radeon_private_t ;


 int COMMIT_RING () ;
 int r600_cp_dispatch_indirect (struct drm_device*,struct drm_buf*,int ,int) ;
 int radeon_cp_discard_buffer (struct drm_device*,int ,struct drm_buf*) ;

__attribute__((used)) static void r600_ib_free(struct drm_device *dev, struct drm_buf *buf,
   struct drm_file *fpriv, int l, int r)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 if (buf) {
  if (!r)
   r600_cp_dispatch_indirect(dev, buf, 0, l * 4);
  radeon_cp_discard_buffer(dev, fpriv->master, buf);
  COMMIT_RING();
 }
}
