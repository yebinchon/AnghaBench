
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_device {int * _vblank_count; } ;


 int atomic_read (int *) ;

u32 drm_vblank_count(struct drm_device *dev, int crtc)
{
 return atomic_read(&dev->_vblank_count[crtc]);
}
