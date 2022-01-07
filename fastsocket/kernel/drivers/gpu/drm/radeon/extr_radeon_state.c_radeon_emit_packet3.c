
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_radeon_private_t ;
struct TYPE_4__ {int buffer; } ;
typedef TYPE_1__ drm_radeon_kcmd_buffer_t ;


 int ADVANCE_RING () ;
 int BEGIN_RING (unsigned int) ;
 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*) ;
 int OUT_RING_DRM_BUFFER (int ,unsigned int) ;
 int RING_LOCALS ;
 int radeon_check_and_fixup_packet3 (int *,struct drm_file*,TYPE_1__*,unsigned int*) ;

__attribute__((used)) static int radeon_emit_packet3(struct drm_device * dev,
          struct drm_file *file_priv,
          drm_radeon_kcmd_buffer_t *cmdbuf)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 unsigned int cmdsz;
 int ret;
 RING_LOCALS;

 DRM_DEBUG("\n");

 if ((ret = radeon_check_and_fixup_packet3(dev_priv, file_priv,
        cmdbuf, &cmdsz))) {
  DRM_ERROR("Packet verification failed\n");
  return ret;
 }

 BEGIN_RING(cmdsz);
 OUT_RING_DRM_BUFFER(cmdbuf->buffer, cmdsz);
 ADVANCE_RING();

 return 0;
}
