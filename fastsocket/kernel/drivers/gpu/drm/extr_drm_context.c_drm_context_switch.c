
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int last_context; int context_flag; } ;


 int DRM_DEBUG (char*,int,int) ;
 int DRM_ERROR (char*) ;
 int EBUSY ;
 int clear_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int drm_context_switch(struct drm_device * dev, int old, int new)
{
 if (test_and_set_bit(0, &dev->context_flag)) {
  DRM_ERROR("Reentering -- FIXME\n");
  return -EBUSY;
 }

 DRM_DEBUG("Context switch from %d to %d\n", old, new);

 if (new == dev->last_context) {
  clear_bit(0, &dev->context_flag);
  return 0;
 }

 return 0;
}
