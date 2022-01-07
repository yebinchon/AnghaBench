
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_gem_handle_delete (struct drm_file*,int ) ;

int radeon_mode_dumb_destroy(struct drm_file *file_priv,
        struct drm_device *dev,
        uint32_t handle)
{
 return drm_gem_handle_delete(file_priv, handle);
}
