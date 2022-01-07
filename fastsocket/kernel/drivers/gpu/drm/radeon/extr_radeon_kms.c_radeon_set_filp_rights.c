
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void radeon_set_filp_rights(struct drm_device *dev,
       struct drm_file **owner,
       struct drm_file *applier,
       uint32_t *value)
{
 mutex_lock(&dev->struct_mutex);
 if (*value == 1) {

  if (!*owner)
   *owner = applier;
 } else if (*value == 0) {

  if (*owner == applier)
   *owner = ((void*)0);
 }
 *value = *owner == applier ? 1 : 0;
 mutex_unlock(&dev->struct_mutex);
}
